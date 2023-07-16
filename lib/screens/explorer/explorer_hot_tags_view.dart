import 'package:aipictors/graphql/__generated__/hot_tags.req.gql.dart';
import 'package:aipictors/providers/client_provider.dart';
import 'package:aipictors/widgets/builder/operation_builder.dart';
import 'package:aipictors/widgets/container/error/data_empty_error_container.dart';
import 'package:aipictors/widgets/container/error/data_not_found_error_container.dart';
import 'package:aipictors/widgets/container/loading_container.dart';
import 'package:aipictors/widgets/list/tag_list_tile.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 探索・ホットタグ
class ExplorerHotTagsView extends HookConsumerWidget {
  const ExplorerHotTagsView({
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
      operationRequest: GHotTagsReq((builder) {
        return builder;
      }),
      builder: (context, response) {
        final tags = response.data?.hotTags;
        if (tags == null) {
          return const DataNotFoundErrorContainer();
        }
        if (tags.isEmpty) {
          return const DataEmptyErrorContainer();
        }
        return ListView.builder(
          key: const PageStorageKey('explorer_hot_tags'),
          // physics: const ClampingScrollPhysics(),
          padding: const EdgeInsets.only(bottom: 16, top: 8),
          itemCount: tags.length,
          itemBuilder: (context, index) {
            final tag = tags[index];
            return TagListTile(
              title: tag.name,
              imageURL: tag.firstWork?.thumbnailImage?.downloadURL,
              onTap: () {
                FirebaseAnalytics.instance.logSelectContent(
                  contentType: 'tag',
                  itemId: tag.id,
                );
                context.push('/tags/${tag.id}');
              },
            );
          },
        );
      },
    );
  }
}