import 'package:aipictors/graphql/__generated__/hot_works.req.gql.dart';
import 'package:aipictors/providers/client_provider.dart';
import 'package:aipictors/widgets/builder/operation_builder.dart';
import 'package:aipictors/widgets/container/error/data_empty_error_container.dart';
import 'package:aipictors/widgets/container/error/data_not_found_error_container.dart';
import 'package:aipictors/widgets/container/loading_container.dart';
import 'package:aipictors/widgets/image/grid_work_image.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 探索・ホットな作品
class ExplorerHotWorksView extends HookConsumerWidget {
  const ExplorerHotWorksView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(context, ref) {
    final client = ref.watch(clientProvider);

    if (client.value == null) {
      return const LoadingContainer();
    }

    return OperationBuilder(
      client: client.value!,
      operationRequest: GHotWorksReq((builder) {
        return builder;
      }),
      builder: (context, response) {
        final works = response.data?.hotWorks;
        if (works == null) {
          return const DataNotFoundErrorContainer();
        }
        if (works.isEmpty) {
          return const DataEmptyErrorContainer();
        }
        return GridView.builder(
          key: const PageStorageKey('explorer_hot_works'),
          // physics: const ClampingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: works.length,
          itemBuilder: (context, index) {
            final work = works[index];
            return InkWell(
              onTap: () {
                FirebaseAnalytics.instance.logSelectContent(
                  contentType: 'work',
                  itemId: work.id,
                );
                context.push('/works/${work.id}');
              },
              child: GridWorkImage(imageURL: work.thumbnailImage!.downloadURL),
            );
          },
        );
      },
    );
  }
}