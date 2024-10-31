import 'package:aipictors/default.i18n.dart';
import 'package:aipictors/features/daily_theme/widgets/daily_theme_list_tile.dart';
import 'package:aipictors/features/generation/widgets/generated_images_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 画像生成の履歴一覧
class GenerationResultsScreen extends HookConsumerWidget {
  const GenerationResultsScreen({
    super.key,
  });

  @override
  Widget build(context, ref) {
    return Scaffold(
      appBar: AppBar(title: Text('生成履歴'.i18n)),
      body: SingleChildScrollView(
        child: GeneratedImagesGridView(
          onTap: (String nanoId) {
            context.push('/generation/results/$nanoId');
          },
          onUpdate: () {},
        ),
      ),
    );
  }
}
