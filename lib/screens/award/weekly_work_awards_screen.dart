import 'package:aipictors/graphql/__generated__/work_awards.req.gql.dart';
import 'package:aipictors/providers/client_provider.dart';
import 'package:aipictors/providers/config_provider.dart';
import 'package:aipictors/widgets/builder/operation_builder.dart';
import 'package:aipictors/widgets/container/error/data_empty_error_container.dart';
import 'package:aipictors/widgets/container/error/data_not_found_error_container.dart';
import 'package:aipictors/widgets/container/loading_container.dart';
import 'package:aipictors/widgets/image/grid_work_image.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 作品ランキング（週別）
class WeeklyWorkAwardsScreen extends HookConsumerWidget {
  const WeeklyWorkAwardsScreen({
    super.key,
    required this.year,
    required this.month,
  });

  final int year;

  final int month;

  @override
  Widget build(context, ref) {
    final config = ref.watch(configProvider);

    final client = ref.watch(clientProvider);

    if (client.value == null) {
      return const LoadingContainer();
    }

    return OperationBuilder(
      client: client.value!,
      operationRequest: GWorkAwardsReq((builder) {
        builder
          ..vars.limit = config.graphqlQueryLimit
          ..vars.offset = 0
          ..vars.where.year = year
          ..vars.where.month = month
          ..vars.where.weekIndex = 0;
      }),
      builder: (context, response) {
        final awardList = response.data?.workAwards;
        if (awardList == null) {
          return const DataNotFoundErrorContainer();
        }
        if (awardList.isEmpty) {
          return const DataEmptyErrorContainer();
        }
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: awardList.length,
          itemBuilder: (context, index) {
            final award = awardList[index];
            final work = award.work;
            return InkWell(
              onTap: () {
                FirebaseAnalytics.instance.logSelectContent(
                  contentType: 'work',
                  itemId: work.id,
                );
                context.push('/works/${work.id}');
              },
              child: GridWorkImage(
                imageURL: work.largeThumbnailImageURL,
                imageAspectRatio: work.imageAspectRatio,
                thumbnailImagePosition: work.thumbnailImagePosition,
              ),
            );
          },
        );
      },
    );
  }
}
