import 'package:aipictors/default.i18n.dart';
import 'package:aipictors/features/generation/widgets/__generated__/viewer_image_generation_status.data.gql.dart';
import 'package:aipictors/providers/viewer_image_generation_status_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GenerationButton extends HookConsumerWidget {
  const GenerationButton({
    super.key,
    required this.onPressed,
  });

  final Future Function() onPressed;

  @override
  Widget build(context, ref) {
    final viewerImageGenerationStatus =
        ref.watch(viewerImageGenerationStatusProvider);

    final imageGenerationStatus =
        useState<GViewerImageGenerationStatusData?>(null);

    viewerImageGenerationStatus.whenData(
      (final data) => imageGenerationStatus.value = data,
    );

    if (imageGenerationStatus.value == null) {
      return const FilledButton(
        onPressed: null,
        child: CircularProgressIndicator(),
      );
    }

    return FilledButton(
      onPressed: onPressed,
      child: Text(
        '生成する( _IN_PROGRESS_TASKS_ / _AVAILABLE_TASKS_ )'
            .i18n
            .replaceAllMapped(
              RegExp(r'_IN_PROGRESS_TASKS_'),
              (match) =>
                  viewerImageGenerationStatus
                      .value!.viewer?.inProgressImageGenerationTasksCount
                      .toString() ??
                  '0',
            )
            .replaceAllMapped(
          RegExp(r'_AVAILABLE_TASKS_'),
          (match) {
            // 最大生成可能枚数 - 現在生成中の枚数 - 本日生成済みの枚数 = 残りの生成可能枚数
            if (viewerImageGenerationStatus
                        .value!.viewer?.availableImageGenerationMaxTasksCount ==
                    null ||
                viewerImageGenerationStatus
                        .value!.viewer?.inProgressImageGenerationTasksCost ==
                    null ||
                viewerImageGenerationStatus
                        .value!.viewer?.remainingImageGenerationTasksCount ==
                    null) {
              return '0';
            }
            return (viewerImageGenerationStatus
                        .value!.viewer!.availableImageGenerationMaxTasksCount -
                    viewerImageGenerationStatus
                        .value!.viewer!.inProgressImageGenerationTasksCost -
                    viewerImageGenerationStatus
                        .value!.viewer!.remainingImageGenerationTasksCount)
                .toString();
          },
        ),
      ),
    );
  }
}
