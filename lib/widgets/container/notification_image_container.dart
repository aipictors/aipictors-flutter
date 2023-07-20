import 'package:aipictors/providers/config_provider.dart';
import 'package:aipictors/widgets/container/notification_image_container_compact.dart';
import 'package:aipictors/widgets/container/notification_image_container_medium.dart';
import 'package:aipictors/config.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotificationImageContainer extends HookConsumerWidget {
  const NotificationImageContainer({
    Key? key,
    required this.workTitle,
    required this.workImageURL,
  }) : super(key: key);

  final String? workTitle;

  final String? workImageURL;

  @override
  Widget build(context, ref) {
    final config = ref.watch(configProvider);
    if (MediaQuery.of(context).size.width >= DefaultConfig.mediumUIThreshold &&
            config.uiMode == 'Auto' ||
        config.uiMode == 'Medium') {
      return NotificationImageContainerMedium(
        workTitle: workTitle,
        workImageURL: workImageURL,
      );
    }
    return NotificationImageContainerCompact(
      workTitle: workTitle,
      workImageURL: workImageURL,
    );
  }
}
