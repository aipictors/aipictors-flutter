import 'package:aipictors/default.i18n.dart';
import 'package:aipictors/features/viewer/queries/__generated__/viewer_image_generation_status.data.gql.dart';
import 'package:aipictors/providers/viewer_image_generation_status_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GeneratingImageContainer extends HookConsumerWidget {
  const GeneratingImageContainer({
    super.key,
  });

  @override
  Widget build(context, ref) {
    final ValueNotifier<GViewerImageGenerationStatusData?>
        viewerImageGenerationStatus = useState(null);
    ref
        .watch(viewerImageGenerationStatusProvider.future)
        .then((value) => viewerImageGenerationStatus.value = value);

    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '生成中'.i18n,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          '_VIEWER_WAIT_ / _TOTAL_WAIT_'
              .i18n
              .replaceAllMapped(
                RegExp(r'_VIEWER_WAIT_'),
                (match) =>
                    viewerImageGenerationStatus
                        .value?.viewer?.imageGenerationWaitCount
                        .toString() ??
                    '0',
              )
              .replaceAllMapped(
                RegExp(r'_TOTAL_WAIT_'),
                (match) =>
                    viewerImageGenerationStatus
                        .value?.imageGenerationEngineStatus.normalTasksCount
                        .toString() ??
                    '0',
              ),
        ),
      ],
    ));
  }
}
