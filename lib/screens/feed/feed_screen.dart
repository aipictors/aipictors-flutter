import 'package:aipictors/default.i18n.dart';
import 'package:aipictors/providers/auth_state_provider.dart';
import 'package:aipictors/providers/feed_tab_index_provider.dart';
import 'package:aipictors/screens/feed/feed_home_view.dart';
import 'package:aipictors/screens/feed/feed_hot_works_view.dart';
import 'package:aipictors/screens/feed/feed_latest_works_view.dart';
import 'package:aipictors/screens/feed/feed_popular_works_view.dart';
import 'package:aipictors/widgets/container/home_logo_container.dart';
import 'package:aipictors/widgets/controller/feed_tab_controller.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// フィード
class FeedScreen extends HookConsumerWidget {
  const FeedScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(context, ref) {
    final authState = ref.watch(authStateProvider);

    final tabIndex = ref.watch(feedTabIndexProvider);

    const tabSize = 3;

    return FeedTabController(
      length: tabSize,
      child: Scaffold(
        appBar: AppBar(
          title: const HomeLogoContainer(),
          actions: [
            IconButton(
              icon: const Icon(Icons.newspaper_rounded),
              onPressed: () {
                context.push('/information');
              },
            ),
          ],
          bottom: TabBar(tabs: [
            if (authState.value != null) Tab(text: 'フォロー'.i18n),
            if (authState.value == null) Tab(text: 'ホーム'.i18n),
            Tab(text: '新着'.i18n),
            Tab(text: 'おすすめ'.i18n),
          ]),
        ),
        resizeToAvoidBottomInset: true,
        body: TabBarView(children: [
          if (authState.value == null)
            const FeedPopularWorksView(
              key: PageStorageKey('feed_popular_works'),
            ),
          if (authState.value != null)
            const FeedHomeView(
              key: PageStorageKey('feed_home'),
            ),
          const FeedLatestWorksView(
            key: PageStorageKey('feed_latest_works'),
          ),
          const FeedHotWorksView(
            key: PageStorageKey('feed_hot_works'),
          ),
        ]),
        floatingActionButton: Builder(builder: (context) {
          if (tabIndex == 1) {
            return FloatingActionButton.extended(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              icon: const Icon(Icons.add),
              label: Text('お題の作品'.i18n),
              onPressed: () {
                context.push('/works/create');
              },
            );
          }
          return FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            child: const Icon(Icons.add),
            onPressed: () {
              context.push('/works/create');
            },
          );
        }),
      ),
    );
  }
}
