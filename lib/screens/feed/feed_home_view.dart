import 'package:aipictors/graphql/__generated__/viewer_feed_works.req.gql.dart';
import 'package:aipictors/providers/client_provider.dart';
import 'package:aipictors/widgets/builder/operation_builder.dart';
import 'package:aipictors/widgets/container/loading_container.dart';
import 'package:aipictors/widgets/list/feed_work_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FeedHomeView extends HookConsumerWidget {
  const FeedHomeView({
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
      operationRequest: GViewerFeedWorksReq((builder) {
        return builder
          ..vars.limit = 16
          ..vars.offset = 0;
      }),
      isEmpty: (data) {
        return data?.viewer?.feedWorks.isEmpty;
      },
      builder: (data) {
        return ListView.separated(
          key: const PageStorageKey('feed_home'),
          separatorBuilder: (context, index) {
            return const Divider(height: 0);
          },
          itemCount: data.viewer!.feedWorks.length,
          itemBuilder: (context, index) {
            final work = data.viewer!.feedWorks[index];
            return FeedWorkListTile(
              workId: work.id,
              workTitle: work.title,
              workImageURL: work.thumbnailImage!.downloadURL,
              workCreatedAt: work.createdAt,
              userName: work.user.name,
              userIconImageURL: work.user.iconImage?.downloadURL,
              likesCount: work.likesCount,
              commentsCount: work.commentsCount,
              isLiked: work.viewer.isLiked,
              isBookmarked: work.viewer.isBookmarked,
            );
          },
        );
      },
    );
  }
}