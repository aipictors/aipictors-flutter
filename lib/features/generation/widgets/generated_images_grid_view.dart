import 'dart:math';

import 'package:aipictors/features/generation/__generated__/viewer_image_generation_results.data.gql.dart';
import 'package:aipictors/features/generation/__generated__/viewer_image_generation_results.req.gql.dart';
import 'package:aipictors/features/generation/widgets/generating_image_container.dart';
import 'package:aipictors/providers/client_provider.dart';
import 'package:aipictors/providers/config_provider.dart';
import 'package:aipictors/providers/viewer_image_generation_status_provider.dart';
import 'package:aipictors/providers/viewer_image_generation_tasks_provider.dart';
import 'package:aipictors/widgets/builder/operation_builder.dart';
import 'package:aipictors/widgets/error/deleted_image_generation_task_error_container.dart';
import 'package:aipictors/widgets/image/post_image.dart';
import 'package:aipictors/widgets/loading_progress.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 生成画像
class GeneratedImagesGridView extends HookConsumerWidget {
  const GeneratedImagesGridView({
    super.key,
    required this.onTap,
    required this.onUpdate,
    this.limit,
  });

  final Function(String id) onTap;

  final VoidCallback onUpdate;

  final int? limit;

  @override
  Widget build(context, ref) {
    final client = ref.watch(clientProvider);
    final config = ref.watch(configProvider);
    final inProgressImageGenerationTasksCount = useState(0);
    final imageGenerationTaskList = useState([]);
    final viewerImageGenerationStatus =
        ref.watch(viewerImageGenerationStatusProvider);
    final viewerImageGenerationTasks =
        ref.watch(viewerImageGenerationTasksProvider);

    viewerImageGenerationTasks.whenData((value) {
      if (value?.viewer?.imageGenerationTasks != null) {
        imageGenerationTaskList.value =
            value!.viewer!.imageGenerationTasks.toList();
      }
    });

    if (client.value == null) {
      return const LoadingProgress();
    }

    final request = GViewerImageGenerationResultsReq((builder) {
      builder
        ..vars.offset = 0
        ..vars.limit = (limit == null)
            ? config.graphqlQueryLimit
            : min(limit!, config.graphqlQueryLimit);
    });

    // 生成している画像の枚数が変化したら表示を更新する
    viewerImageGenerationStatus.whenData(
      (final data) {
        int? latestImageGenerationTasksCount =
            data?.viewer?.inProgressImageGenerationTasksCount;

        if (latestImageGenerationTasksCount != null &&
            latestImageGenerationTasksCount !=
                inProgressImageGenerationTasksCount.value) {
          inProgressImageGenerationTasksCount.value =
              latestImageGenerationTasksCount;
          final notifier =
              ref.read(viewerImageGenerationTasksProvider.notifier);
          notifier.refresh();
          request.rebuild((builder) {
            builder.fetchPolicy = FetchPolicy.NoCache;
          });
        }
      },
    );

    return Column(
      children: [
        OperationBuilder(
          client: client.value!,
          operationRequest: request,
          builder: (context, response) {
            final resultList =
                response.data?.viewer?.imageGenerationResults.toList();
            if (resultList == null) {
              return const LoadingProgress();
            }
            final List<dynamic> combinedList = [
              ...imageGenerationTaskList.value,
              ...resultList
            ];
            return GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: (limit == null)
                  ? combinedList.length
                  : min(limit!, combinedList.length),
              itemBuilder: (context, index) {
                // 生成中なら進捗状況を表示する
                // runtimeTypeをStringに変換しないと正常に判定されない
                if (combinedList[index].runtimeType.toString() ==
                    r'_$GViewerImageGenerationTasksData_viewer_imageGenerationTasks') {
                  return const GeneratingImageContainer();
                }
                // 生成が完了しているならサムネ画像を表示する
                final result = combinedList[index]
                    as GViewerImageGenerationResultsData_viewer_imageGenerationResults;
                if (result.nanoid == null || result.thumbnailUrl == null) {
                  return const DeletedImageGenerationTaskErrorContainer();
                }
                return InkWell(
                  onTap: () {
                    onTap(result.nanoid!);
                  },
                  child: PostImage(
                    imageURL: result.thumbnailUrl,
                    imageAspectRatio: 1,
                    thumbnailImagePosition: null,
                  ),
                );
              },
            );
          },
        )
      ],
    );
  }
}
