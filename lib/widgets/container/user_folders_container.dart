import 'package:aipictors/graphql/__generated__/user_works.req.gql.dart';
import 'package:aipictors/providers/client_provider.dart';
import 'package:aipictors/widgets/container/error/data_not_found_error_container.dart';
import 'package:aipictors/widgets/container/error/empty_error_container.dart';
import 'package:aipictors/widgets/container/error/unexpected_error_container.dart';
import 'package:aipictors/widgets/container/loading_container.dart';
import 'package:aipictors/widgets/image/grid_work_image.dart';
import 'package:aipictors/widgets/view/works_grid_view.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserFoldersContainer extends HookConsumerWidget {
  const UserFoldersContainer({
    Key? key,
    required this.userId,
  }) : super(key: key);

  final String userId;

  @override
  Widget build(context, ref) {
    final client = ref.watch(clientProvider);

    if (client.value == null) {
      return const LoadingContainer();
    }

    return Operation(
      client: client.value!,
      operationRequest: GUserWorksReq((builder) {
        return builder
          ..vars.user_id = userId
          ..vars.limit = 16
          ..vars.offset = 0;
      }),
      builder: (context, response, error) {
        if (error != null) {
          return const UnexpectedErrorContainer();
        }
        if (response == null || response.loading) {
          return const LoadingContainer();
        }
        if (response.graphqlErrors != null) {
          return const UnexpectedErrorContainer();
        }
        final works = response.data?.user?.works;
        if (works == null) {
          return const DataNotFoundErrorContainer();
        }
        if (works.isEmpty) {
          return const EmptyErrorContainer();
        }
        return WorksGridView(
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
              child: GridWorkImage(
                imageURL: work.image!.downloadURL,
              ),
            );
          },
        );
      },
    );
  }
}
