import 'package:aipictors/default.i18n.dart';
import 'package:aipictors/features/generation/functions/create_image_generation_task.dart';
import 'package:aipictors/features/generation/utils/prompt_check.dart';
import 'package:aipictors/providers/viewer_image_generation_status_provider.dart';
import 'package:aipictors/providers/viewer_provider.dart';
import 'package:aipictors/states/image_generation_state.dart';
import 'package:aipictors/utils/to_exception_message.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 生成に必要な事前準備等をまとめて行う
Future<void> imageGenerationTaskCreator(BuildContext context, WidgetRef ref,
    ImageGenerationState imageGeneration) async {
  final viewer = await ref.watch(viewerProvider.future);

  final viewerImageGenerationStatus =
      await ref.watch(viewerImageGenerationStatusProvider.future);

  // LoRAの数を確認する
  final pattern = RegExp(r'(?:<lora:([^:]*):([^>]*)>)');
  final matches = pattern.allMatches(imageGeneration.prompt);
  final loraCount = matches.length;
  if ((viewerImageGenerationStatus
              ?.viewer?.availableImageGenerationLoraModelsCount ??
          0) <
      loraCount) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
            content: Text(
          'LoRAは_MAX_LORA_COUNT_個までしか使用できません'.i18n.replaceAllMapped(
                RegExp(r'_MAX_LORA_COUNT_'),
                (match) => (viewerImageGenerationStatus
                            ?.viewer?.availableImageGenerationLoraModelsCount ??
                        0)
                    .toString(),
              ),
        )),
      );
    return;
  }

  // プロンプトの内容を確認する
  final ngWords = await promptCheck(
      imageGeneration.prompt,
      imageGeneration.negativePrompt,
      imageGeneration.model,
      viewer!.viewer!.user.id);
  // NGワードがあったら生成させない
  if (ngWords['result'] != 'no_ng_words') {
    if (ngWords['hit_negative_words'].isNotEmpty) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
              content: Text(
            'ネガティブプロンプトにNGワードがあります: "_NG_WORDS_"'.i18n.replaceAllMapped(
                  RegExp(r'_NG_WORDS_'),
                  (match) => ngWords['hit_negative_words'],
                ),
          )),
        );
    }
    if (ngWords['hit_words'].isNotEmpty) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
              content: Text(
            'プロンプトにNGワードがあります: "_NG_WORDS_"'.i18n.replaceAllMapped(
                  RegExp(r'_NG_WORDS_'),
                  (match) => ngWords['hit_words'],
                ),
          )),
        );
    }
    return;
  }

  try {
    await createImageGenerationTask((builder) {
      return builder
        ..vars.input.count = imageGeneration.count
        ..vars.input.type = imageGeneration.type
        ..vars.input.model = imageGeneration.model
        ..vars.input.vae = imageGeneration.vae
        ..vars.input.prompt = imageGeneration.prompt
        ..vars.input.negativePrompt = imageGeneration.negativePrompt
        ..vars.input.seed = imageGeneration.seed.toDouble()
        ..vars.input.steps = imageGeneration.steps
        ..vars.input.scale = imageGeneration.scale
        ..vars.input.sampler = imageGeneration.sampler
        ..vars.input.sizeType = imageGeneration.sizeType;
    });
    // ignore: use_build_context_synchronously
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(content: Text('タスクを作成しました'.i18n)),
      );
  } catch (exception) {
    // ignore: use_build_context_synchronously
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(content: Text(toExceptionMessage(exception))),
      );
  }
}
