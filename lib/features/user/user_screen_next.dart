import 'package:aipictors/delegates/tab_header_delegate.dart';
import 'package:aipictors/features/home/widgets/loading_screen.dart';
import 'package:aipictors/features/user/queries/__generated__/user.req.gql.dart';
import 'package:aipictors/features/user/widgets/user_app_bar.dart';
import 'package:aipictors/features/user/widgets/user_folders_container.dart';
import 'package:aipictors/features/user/widgets/user_header_container.dart';
import 'package:aipictors/features/user/widgets/user_profile_container.dart';
import 'package:aipictors/features/user/widgets/user_works_container.dart';
import 'package:aipictors/providers/client_provider.dart';
import 'package:aipictors/widgets/builder/operation_builder.dart';
import 'package:aipictors/widgets/error/data_not_found_error_container.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// ユーザの詳細
/// ヘッダーが表示される
class UserScreen extends HookConsumerWidget {
  const UserScreen({
    super.key,
    required this.userId,
  });

  final String userId;

  @override
  Widget build(context, ref) {
    final client = ref.watch(clientProvider);

    if (client.value == null) {
      return const LoadingScreen();
    }

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        extendBody: true,
        body: OperationBuilder(
          client: client.value!,
          operationRequest: GUserReq((builder) {
            builder.vars.userId = userId;
          }),
          builder: (context, response) {
            final user = response.data?.user;
            if (user == null) {
              return const DataNotFoundErrorContainer();
            }
            return NestedScrollView(
              body: TabBarView(
                children: [
                  UserWorksContainer(userId: userId),
                  UserFoldersContainer(userId: userId),
                ],
              ),
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  UserAppBar(
                    headerImageURL: user.headerImageUrl ?? '',
                    innerBoxIsScrolled: innerBoxIsScrolled,
                    userName: user.name,
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate([
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          UserHeaderContainer(
                            userId: userId,
                            iconImageURL: user.iconUrl,
                            isFollowee: user.isFollowee == true,
                          ),
                          const SizedBox(height: 8),
                          UserProfileContainer(
                            userId: user.id,
                            name: user.name,
                            login: user.login,
                            biography: user.biography,
                            likesCount: user.receivedLikesCount,
                            viewsCount: user.receivedViewsCount,
                            followersCount: user.followersCount,
                            awardsCount: user.awardsCount,
                          ),
                        ],
                      ),
                    ]),
                  ),
                  const SliverPersistentHeader(
                    pinned: true,
                    delegate: TabHeaderDelegate(
                      tabBar: TabBar(
                        tabs: [Tab(text: '作品'), Tab(text: 'シリーズ')],
                      ),
                    ),
                  )
                ];
              },
            );
          },
        ),
      ),
    );
  }
}
