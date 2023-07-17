import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotificationStickerCommentContainer extends HookConsumerWidget {
  const NotificationStickerCommentContainer({
    Key? key,
    required this.stickerImageURL,
    required this.workImageURL,
  }) : super(key: key);

  final String? stickerImageURL;

  final String? workImageURL;

  @override
  Widget build(context, ref) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            stickerImageURL!,
            fit: BoxFit.cover,
            width: 80,
            height: 80,
          ),
        )
      ],
    );
  }
}
