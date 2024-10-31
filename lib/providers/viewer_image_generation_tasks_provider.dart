import 'package:aipictors/client.dart';
import 'package:aipictors/features/generation/__generated__/viewer_image_generation_tasks.data.gql.dart';
import 'package:aipictors/features/generation/__generated__/viewer_image_generation_tasks.req.gql.dart';
import 'package:aipictors/providers/config_provider.dart';
import 'package:aipictors/utils/to_response_data.dart';
import 'package:ferry/ferry.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'viewer_image_generation_tasks_provider.g.dart';

/// ログイン中のユーザの生成中画像のデータ
/// AutoDisposeFutureProvider<InvalidType>
@riverpod
class ViewerImageGenerationTasks extends _$ViewerImageGenerationTasks {
  @override
  Future<GViewerImageGenerationTasksData?> build() async {
    return await fetch();
  }

  Future<GViewerImageGenerationTasksData?> fetch() async {
    // final user = ref.watch(authStateProvider);

    // ログインしていない場合はnullを返す
    // if (user.value == null) {
    //   return null;
    // }

    final client = await createClient();

    final config = ref.watch(configProvider);

    final request = GViewerImageGenerationTasksReq((builder) {
      builder
        ..fetchPolicy = FetchPolicy.NoCache
        ..vars.limit = config.graphqlQueryLimit
        ..vars.offset = 0;
    });

    final stream = client.request(request).map(toResponseData);

    return await stream.first;
  }

  void refresh() async {
    state = AsyncValue.data(await fetch());
  }
}
