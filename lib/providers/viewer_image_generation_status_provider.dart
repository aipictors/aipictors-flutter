import 'package:aipictors/client.dart';
import 'package:aipictors/features/generation/widgets/__generated__/viewer_image_generation_status.data.gql.dart';
import 'package:aipictors/features/generation/widgets/__generated__/viewer_image_generation_status.req.gql.dart';
import 'package:aipictors/utils/to_response_data.dart';
import 'package:ferry/ferry.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'viewer_image_generation_status_provider.g.dart';

/// ログイン中のユーザ画像生成ののデータ
/// AutoDisposeFutureProvider<InvalidType>
@riverpod
class ViewerImageGenerationStatus extends _$ViewerImageGenerationStatus {
  GViewerImageGenerationStatusData? result;

  @override
  Future<GViewerImageGenerationStatusData?> build() async {
    autoRefresh();
    return await fetch();
  }

  Future<GViewerImageGenerationStatusData?> fetch() async {
    final client = await createClient();

    final request = GViewerImageGenerationStatusReq((builder) {
      builder.fetchPolicy = FetchPolicy.NoCache;
    });

    final stream = client.request(request).map(toResponseData);
    result = await stream.first;
    return result;
  }

  void refresh() async {
    state = AsyncValue.data(await fetch());
  }

  void autoRefresh() {
    DateTime lastUpdate = DateTime.now();
    //todo: 更新間隔を調整する
    Stream.periodic(const Duration(seconds: 10)).listen((_) async {
      final now = DateTime.now();
      // 前回取得時、生成中の画像があった場合と、前回取得から5分以上経過した場合に更新する
      // 生成中；10秒に1回更新
      // 非生成時：5分に1回更新
      if (result?.viewer?.inProgressImageGenerationTasksCount != 0 ||
          5 < now.difference(lastUpdate).inMinutes) {
        lastUpdate = now;
        state = AsyncValue.data(await fetch());
      }
    });
  }
}
