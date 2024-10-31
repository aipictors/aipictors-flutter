import 'package:aipictors/default.i18n.dart';
import 'package:aipictors/features/generation/__generated__/viewer_image_generation_results.data.gql.dart';
import 'package:aipictors/features/generation/utils/reuse_image_generation_task.dart';
import 'package:aipictors/features/generation/utils/to_generation_size_type_text.dart';
import 'package:aipictors/features/generation/widgets/generation_protect_button.dart';
import 'package:aipictors/features/generation/widgets/generation_rating_container.dart';
import 'package:aipictors/features/generation/widgets/generation_setting_card.dart';
import 'package:aipictors/features/generation/widgets/generation_task_options_container.dart';
import 'package:aipictors/features/generation/widgets/prompts_container.dart';
import 'package:aipictors/providers/image_generation_provider.dart';
import 'package:aipictors/widgets/image/feed_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GenerationResultListTile extends HookConsumerWidget {
  const GenerationResultListTile({
    super.key,
    required this.result,
    required this.onTap,
    required this.onRating,
    required this.onProtect,
    required this.onDelete,
  });

  final GViewerImageGenerationResultsData_viewer_imageGenerationResults result;

  final VoidCallback onTap;

  final Function(BuildContext context, String nanoId, int value) onRating;

  final Function(BuildContext context, String nanoId, bool value) onProtect;

  final Function(BuildContext context, String nanoId) onDelete;

  @override
  Widget build(context, ref) {
    final imageGeneration = ref.watch(imageGenerationProvider);

    final imageGenerationNotifier = ref.read(imageGenerationProvider.notifier);

    return ListTile(
      onTap: onTap,
      minVerticalPadding: 0,
      contentPadding: const EdgeInsets.only(
        right: 16,
        left: 16,
        top: 0,
        bottom: 0,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FeedImage(
            imageURL: result.thumbnailUrl,
            imageAspectRatio: 1,
            headers: const {
              'Referer': 'https://beta.aipictors.com/',
            },
          ),
          const SizedBox(height: 12),
        ],
      ),
      subtitle: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GenerationTaskOptionsContainer(
              onReuseButtonPressed: () {
                reuseImageGenerationTask(result, imageGenerationNotifier);
                showSnackBar(context, '生成情報を復元しました'.i18n);
              },
            ),
            IconButton(
              icon: const Icon(Icons.delete_outline_rounded),
              onPressed: () {
                onDelete(context, result.nanoid!);
              },
            ),
          ],
        ),
        Row(children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(
                width: 1,
                color: Theme.of(context).colorScheme.outlineVariant,
              ),
            ),
          ),
          GenerationRatingContainer(
            currentRating: result.rating ?? 0,
            onPressed: (int value) {
              onRating(context, result.nanoid!, value);
            },
          ),
          const Spacer(),
          GenerationProtectButton(
            isProtected: result.isProtected ?? false,
            onPressed: (newProtectionState) {
              onProtect(context, result.nanoid!, newProtectionState);
            },
          ),
        ]),
        Text(
          'プロンプト'.i18n,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        PromptsContainer(
          prompts: result.prompt,
          onPressed: (String prompt) {
            imageGenerationNotifier
                .updatePrompt('${imageGeneration.prompt}, $prompt');
            showSnackBar(
              context,
              'プロンプトに _PROMPT_ を追加しました'.i18n.replaceAllMapped(
                    RegExp(r'_PROMPT_'),
                    (match) => prompt,
                  ),
            );
          },
        ),
        const SizedBox(height: 4),
        Text(
          'ネガティブプロンプト'.i18n,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        PromptsContainer(
          prompts: result.negativePrompt,
          onPressed: (String negativePrompt) {
            imageGenerationNotifier.updateNegativePrompt(
                '${imageGeneration.negativePrompt}, $negativePrompt');
            showSnackBar(
              context,
              'ネガティブプロンプトに _NEGATIVE_PROMPT_ を追加しました'.i18n.replaceAllMapped(
                    RegExp(r'_NEGATIVE_PROMPT_'),
                    (match) => negativePrompt,
                  ),
            );
          },
        ),
        const SizedBox(height: 4),
        Text('その他'.i18n, style: const TextStyle(fontWeight: FontWeight.bold)),
        Wrap(
          children: [
            GenerationSettingCard(
              name: 'モデル'.i18n,
              value: result.model.name.split('.')[0],
              onPressed: () {
                imageGenerationNotifier.updateModel(result.model.name);
                showSnackBar(context, 'モデルを設定しました'.i18n);
              },
            ),
            GenerationSettingCard(
              name: 'サイズ'.i18n,
              value: toGenerationSizeTypeText(result.sizeType),
              onPressed: () {
                imageGenerationNotifier.updateSizeType(result.sizeType);
                showSnackBar(context, 'サイズを設定しました'.i18n);
              },
            ),
            GenerationSettingCard(
              name: 'Seed'.i18n,
              value: result.seed.toString(),
              onPressed: () {
                imageGenerationNotifier.updateSeed(result.seed.toInt());
                showSnackBar(context, 'Seedを設定しました'.i18n);
              },
            ),
            GenerationSettingCard(
              name: 'VAE'.i18n,
              value: result.vae!,
              onPressed: () {
                if (result.vae != 'None') {
                  imageGenerationNotifier.updateVae(result.vae!.split('.')[0]);
                } else {
                  imageGenerationNotifier.updateVae(result.vae);
                }
                showSnackBar(context, 'VAEを設定しました'.i18n);
              },
            ),
          ],
        ),
      ]),
    );
  }

  void showSnackBar(BuildContext context, String text) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(content: Text(text)),
      );
  }
}
