import 'package:aipictors/features/account/account_create_screen.dart';
import 'package:aipictors/features/account/account_delete_screen.dart';
import 'package:aipictors/features/account/account_login_screen.dart';
import 'package:aipictors/features/account/account_password_screen.dart';
import 'package:aipictors/features/account/route.dart';
import 'package:aipictors/features/album/album_create_screen.dart';
import 'package:aipictors/features/album/album_report_screen.dart';
import 'package:aipictors/features/album/album_screen.dart';
import 'package:aipictors/features/album/album_update_screen.dart';
import 'package:aipictors/features/award/novel_awards_screen.dart';
import 'package:aipictors/features/award/work_awards_screen.dart';
import 'package:aipictors/features/config/config_code_screen.dart';
import 'package:aipictors/features/config/config_language_screen.dart';
import 'package:aipictors/features/config/config_muted_tags_screen.dart';
import 'package:aipictors/features/config/config_muted_users_screen.dart';
import 'package:aipictors/features/config/config_notification_screen.dart';
import 'package:aipictors/features/config/config_pass_screen.dart';
import 'package:aipictors/features/config/config_profile_screen.dart';
import 'package:aipictors/features/config/config_theme_screen.dart';
import 'package:aipictors/features/daily_theme/daily_theme_screen.dart';
import 'package:aipictors/features/daily_theme/daily_themes_month_screen.dart';
import 'package:aipictors/features/daily_theme/daily_themes_screen.dart';
import 'package:aipictors/features/debug/debug_screen.dart';
import 'package:aipictors/features/explorer/explorer_screen.dart';
import 'package:aipictors/features/feedback/feedback_screen.dart';
import 'package:aipictors/features/folder/folder_create_screen.dart';
import 'package:aipictors/features/folder/folder_report_screen.dart';
import 'package:aipictors/features/folder/folder_screen.dart';
import 'package:aipictors/features/folder/folder_update_screen.dart';
import 'package:aipictors/features/generation/generation_result_screen.dart';
import 'package:aipictors/features/generation/generation_results_screen.dart';
import 'package:aipictors/features/guideline/guideline_screen.dart';
import 'package:aipictors/features/home/root_screen.dart';
import 'package:aipictors/features/information/information_screen.dart';
import 'package:aipictors/features/information/promotion_screen.dart';
import 'package:aipictors/features/license/license_screen.dart';
import 'package:aipictors/features/login/login_screen.dart';
import 'package:aipictors/features/post/comment_report_screen.dart';
import 'package:aipictors/features/post/work_create_screen.dart';
import 'package:aipictors/features/post/work_report_screen.dart';
import 'package:aipictors/features/post/work_screen.dart';
import 'package:aipictors/features/post/work_update_screen.dart';
import 'package:aipictors/features/privacy/privacy_screen.dart';
import 'package:aipictors/features/search/search_screen.dart';
import 'package:aipictors/features/secret/secret_screen.dart';
import 'package:aipictors/features/sticker/sticker_report_screen.dart';
import 'package:aipictors/features/sticker/sticker_screen.dart';
import 'package:aipictors/features/sticker/stickers_screen.dart';
import 'package:aipictors/features/survey/surveys_screen.dart';
import 'package:aipictors/features/tag/tag_screen.dart';
import 'package:aipictors/features/terms/terms_eula_screen.dart';
import 'package:aipictors/features/terms/terms_screen.dart';
import 'package:aipictors/features/tutorial/tutorial_screen.dart';
import 'package:aipictors/features/user/user_followees_screen.dart';
import 'package:aipictors/features/user/user_followers_screen.dart';
import 'package:aipictors/features/user/user_report_screen.dart';
import 'package:aipictors/features/user/user_screen.dart';
import 'package:aipictors/features/viewer/viewer_albums_screen.dart';
import 'package:aipictors/features/sticker/my_bookmarked_stickers_screen.dart';
import 'package:aipictors/features/viewer/viewer_folders_screen.dart';
import 'package:aipictors/features/viewer/viewer_liked_works_screen.dart';
import 'package:aipictors/features/viewer/viewer_screen.dart';
import 'package:aipictors/features/viewer/viewer_works_screen.dart';
import 'package:aipictors/utils/name_extractor.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
// import 'package:sentry_flutter/sentry_flutter.dart';

final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

final _routes = [
  GoRoute(
    path: '/',
    pageBuilder: (context, state) {
      return const NoTransitionPage(child: RootScreen());
    },
  ),
  GoRoute(
    path: '/account',
    builder: (context, state) {
      return const AccountScreen();
    },
  ),
  GoRoute(
    path: '/account/create',
    builder: (context, state) {
      return const AccountCreateScreen();
    },
  ),
  GoRoute(
    path: '/account/delete',
    builder: (context, state) {
      return const AccountDeleteScreen();
    },
  ),
  GoRoute(
    path: '/account/password',
    builder: (context, state) {
      return const AccountPasswordScreen();
    },
  ),
  GoRoute(
    path: '/account/login',
    builder: (context, state) {
      return const AccountLoginScreen();
    },
  ),
  GoRoute(
    path: '/albums/create',
    builder: (context, state) {
      return const AlbumCreateScreen();
    },
  ),
  GoRoute(
    path: '/albums/:album',
    builder: (context, state) {
      final albumId = state.pathParameters['album'];
      return AlbumScreen(albumId: albumId!);
    },
  ),
  GoRoute(
    path: '/albums/:album/report',
    builder: (context, state) {
      final albumId = state.pathParameters['album'];
      return AlbumReportScreen(albumId: albumId!);
    },
  ),
  GoRoute(
    path: '/albums/:album/update',
    builder: (context, state) {
      final albumId = state.pathParameters['album'];
      return AlbumUpdateScreen(albumId: albumId!);
    },
  ),
  GoRoute(
    path: '/awards/novels',
    builder: (context, state) {
      return const NovelAwardsScreen();
    },
  ),
  GoRoute(
    path: '/awards/works',
    builder: (context, state) {
      return const WorkAwardsScreen();
    },
  ),
  GoRoute(
    path: '/comments/:comment/report',
    builder: (context, state) {
      final commentId = state.pathParameters['comment'];
      return CommentReportScreen(commentId: commentId!);
    },
  ),
  GoRoute(
    path: '/config/code',
    builder: (context, state) {
      return const ConfigCodeScreen();
    },
  ),
  GoRoute(
    path: '/config/language',
    builder: (context, state) {
      return const ConfigLanguageScreen();
    },
  ),
  GoRoute(
    path: '/config/muted_tags',
    builder: (context, state) {
      return const ConfigMutedTagsScreen();
    },
  ),
  GoRoute(
    path: '/config/muted_users',
    builder: (context, state) {
      return const ConfigMutedUsersScreen();
    },
  ),
  GoRoute(
    path: '/config/notifications',
    builder: (context, state) {
      return const ConfigNotificationScreen();
    },
  ),
  GoRoute(
    path: '/config/pass',
    builder: (context, state) {
      return const ConfigPassScreen();
    },
  ),
  GoRoute(
    path: '/config/profile',
    builder: (context, state) {
      return const ConfigProfileScreen();
    },
  ),
  GoRoute(
    path: '/config/theme',
    builder: (context, state) {
      return const ConfigThemeScreen();
    },
  ),
  GoRoute(
    path: '/daily_themes',
    builder: (context, state) {
      return const DailyThemesScreen();
    },
  ),
  GoRoute(
    path: '/daily_themes/months',
    builder: (context, state) {
      return const DailyThemesMonthsScreen();
    },
  ),
  GoRoute(
    path: '/daily_themes/:theme',
    builder: (context, state) {
      final themeId = state.pathParameters['theme'];
      return DailyThemeScreen(themeId: themeId!);
    },
  ),
  GoRoute(
    path: '/explorer',
    builder: (context, state) {
      return const ExplorerScreen();
    },
  ),
  GoRoute(
    path: '/folders/create',
    builder: (context, state) {
      return const FolderCreateScreen();
    },
  ),
  GoRoute(
    path: '/folders/:folder',
    builder: (context, state) {
      final folderId = state.pathParameters['folder'];
      return FolderScreen(folderId: folderId!);
    },
  ),
  GoRoute(
    path: '/folders/:folder/report',
    builder: (context, state) {
      final folderId = state.pathParameters['folder'];
      return FolderReportScreen(folderId: folderId!);
    },
  ),
  GoRoute(
    path: '/folders/:folder/update',
    builder: (context, state) {
      final folderId = state.pathParameters['folder'];
      return FolderUpdateScreen(folderId: folderId!);
    },
  ),
  GoRoute(
    path: '/information',
    builder: (context, state) {
      return const InformationScreen();
    },
  ),
  GoRoute(
    path: '/my/stickers/bookmarked',
    builder: (context, state) {
      return const MyBookmarkedStickersScreen();
    },
  ),
  GoRoute(
    path: '/promotions/:promotion',
    builder: (context, state) {
      final promotionId = state.pathParameters['promotion'];
      return PromotionScreen(promotionId: promotionId!);
    },
  ),
  GoRoute(
    path: '/stickers',
    builder: (context, state) {
      return const StickersScreen();
    },
  ),
  GoRoute(
    path: '/stickers/:sticker',
    builder: (context, state) {
      final stickerId = state.pathParameters['sticker'];
      return StickerScreen(stickerId: stickerId!);
    },
  ),
  GoRoute(
    path: '/stickers/:sticker/report',
    builder: (context, state) {
      final stickerId = state.pathParameters['sticker'];
      return StickerReportScreen(stickerId: stickerId!);
    },
  ),
  GoRoute(
    path: '/tags/:tag_name',
    builder: (context, state) {
      final tagName = state.pathParameters['tag_name'];
      return TagScreen(tagName: tagName!);
    },
  ),
  GoRoute(
    path: '/users/:user',
    builder: (context, state) {
      final userId = state.pathParameters['user'];
      return UserScreen(userId: userId!);
    },
  ),
  GoRoute(
    path: '/users/:user/followees',
    builder: (context, state) {
      final userId = state.pathParameters['user'];
      return UserFolloweesScreen(userId: userId!);
    },
  ),
  GoRoute(
    path: '/users/:user/followers',
    builder: (context, state) {
      final userId = state.pathParameters['user'];
      return UserFollowersScreen(userId: userId!);
    },
  ),
  GoRoute(
    path: '/users/:user/report',
    builder: (context, state) {
      final userId = state.pathParameters['user'];
      return UserReportScreen(userId: userId!);
    },
  ),
  GoRoute(
    path: '/viewer',
    builder: (context, state) {
      return const ViewerScreen();
    },
  ),
  GoRoute(
    path: '/viewer/albums',
    builder: (context, state) {
      return const ViewerAlbumsScreen();
    },
  ),
  GoRoute(
    path: '/viewer/works',
    builder: (context, state) {
      return const ViewerWorksScreen();
    },
  ),
  GoRoute(
    path: '/viewer/folders',
    builder: (context, state) {
      return const ViewerFoldersScreen();
    },
  ),
  GoRoute(
    path: '/viewer/likes',
    builder: (context, state) {
      return const ViewerLikedWorksScreen();
    },
  ),
  GoRoute(
    path: '/works/create',
    builder: (context, state) {
      return const WorkCreateScreen();
    },
  ),
  GoRoute(
    path: '/works/:post',
    builder: (context, state) {
      final workId = state.pathParameters['post'];
      return WorkScreen(workId: workId!);
    },
  ),
  GoRoute(
    path: '/works/:work/report',
    builder: (context, state) {
      final workId = state.pathParameters['work'];
      return WorkReportScreen(workId: workId!);
    },
  ),
  GoRoute(
    path: '/works/:work/update',
    builder: (context, state) {
      final workId = state.pathParameters['work'];
      return WorkUpdateScreen(workId: workId!);
    },
  ),
  GoRoute(
    path: '/debug',
    builder: (context, state) {
      return const DebugScreen();
    },
  ),
  GoRoute(
    path: '/feedback',
    builder: (context, state) {
      return const FeedbackScreen();
    },
  ),
  GoRoute(
    path: '/secret',
    builder: (context, state) {
      return const SecretScreen();
    },
  ),
  GoRoute(
    path: '/search/:text',
    builder: (context, state) {
      final text = state.pathParameters['text'];
      return SearchScreen(text: text!);
    },
  ),
  GoRoute(
    path: '/generation/results',
    builder: (context, state) {
      return const GenerationResultsScreen();
    },
  ),
  GoRoute(
    path: '/generation/results/:result',
    builder: (context, state) {
      final resultNanoId = state.pathParameters['result'];
      return GenerationResultScreen(resultNanoId: resultNanoId!);
    },
  ),
  GoRoute(
    path: '/guideline',
    builder: (context, state) {
      return const GuidelineScreen();
    },
  ),
  GoRoute(
    path: '/license',
    builder: (context, state) {
      return const LicenseScreen();
    },
  ),
  GoRoute(
    path: '/login',
    builder: (context, state) {
      return const LoginScreen();
    },
  ),
  GoRoute(
    path: '/privacy',
    builder: (context, state) {
      return const PrivacyScreen();
    },
  ),
  GoRoute(
    path: '/surveys',
    builder: (context, state) {
      return const SurveysScreen();
    },
  ),
  GoRoute(
    path: '/terms',
    builder: (context, state) {
      return const TermsScreen();
    },
  ),
  GoRoute(
    path: '/terms/eula',
    builder: (context, state) {
      return const TermsEulaScreen();
    },
  ),
  GoRoute(
    path: '/tutorial',
    builder: (context, state) {
      return const TutorialScreen();
    },
  ),
];

final routerConfig = GoRouter(
  initialLocation: '/',
  routes: _routes,
  navigatorKey: _navigatorKey,
  observers: [
    // SentryNavigatorObserver(),
    FirebaseAnalyticsObserver(
      analytics: FirebaseAnalytics.instance,
      nameExtractor: nameExtractor,
    ),
  ],
);
