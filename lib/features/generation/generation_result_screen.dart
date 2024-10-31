import 'package:aipictors/default.i18n.dart';
import 'package:aipictors/features/generation/__generated__/viewer_image_generation_result.req.gql.dart';
import 'package:aipictors/features/generation/functions/delete_image_generation_task.dart';
import 'package:aipictors/features/generation/functions/update_protected_image_generation_task.dart';
import 'package:aipictors/features/generation/functions/update_rating_image_generation_task.dart';
import 'package:aipictors/features/generation/utils/reuse_image_generation_task.dart';
import 'package:aipictors/features/generation/utils/to_generation_size_type_text.dart';
import 'package:aipictors/features/generation/widgets/delete_image_generation_task.dart';
import 'package:aipictors/features/generation/widgets/generation_protect_button.dart';
import 'package:aipictors/features/generation/widgets/generation_rating_container.dart';
import 'package:aipictors/features/generation/widgets/generation_setting_container.dart';
import 'package:aipictors/features/generation/widgets/prompts_container.dart';
import 'package:aipictors/features/home/widgets/data_not_found_error_screen.dart';
import 'package:aipictors/features/home/widgets/loading_screen.dart';
import 'package:aipictors/providers/client_provider.dart';
import 'package:aipictors/providers/image_generation_provider.dart';
import 'package:aipictors/widgets/builder/operation_screen_builder.dart';
import 'package:aipictors/widgets/image/interactive_work_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 生成画像の詳細
// TODO: デザインを見直す
class GenerationResultScreen extends HookConsumerWidget {
  const GenerationResultScreen({
    super.key,
    required this.resultNanoId,
  });

  final String resultNanoId;

  @override
  Widget build(context, ref) {
    final client = ref.watch(clientProvider);

    final imageGeneration = ref.watch(imageGenerationProvider);

    final imageGenerationNotifier = ref.read(imageGenerationProvider.notifier);

    if (client.value == null) {
      return const LoadingScreen();
    }

    return OperationScreenBuilder(
      client: client.value!,
      operationRequest: GViewerImageGenerationResultReq((builder) {
        builder.vars.id = resultNanoId;
      }),
      builder: (context, response) {
        final result = response.data?.imageGenerationResult;
        if (result == null) {
          return const DataNotFoundErrorScreen();
        }
        return Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            title: Text('生成履歴'.i18n),
          ),
          extendBody: true,
          body: GestureDetector(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8 * 1.5),
                    InteractiveWorkImage(
                      downloadURL: result.imageUrl!,
                      headers: const {
                        'Referer': 'https://beta.aipictors.com/',
                      },
                    ),
                    const SizedBox(height: 8),
                    Row(children: [
                      GenerationRatingContainer(
                        currentRating: result.rating!,
                        onPressed: (int rating) {
                          onRating(
                            context,
                            result.nanoid!,
                            (result.rating != rating) ? rating : 0,
                          );
                        },
                      ),
                      const SizedBox(width: 16),
                      GenerationProtectButton(
                        isProtected: result.isProtected ?? false,
                        onPressed: (bool newProtectionState) {
                          onProtect(
                              context, result.nanoid!, newProtectionState);
                        },
                      ),
                      const Spacer(),
                      IconButton(
                        icon: const Icon(Icons.delete_rounded),
                        onPressed: () {
                          onDelete(context, result.nanoid!);
                        },
                      ),
                    ]),
                    const SizedBox(height: 8),
                    Text(
                      'プロンプト'.i18n,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    PromptsContainer(
                        prompts: result.prompt,
                        onPressed: (String prompt) {
                          imageGenerationNotifier.updatePrompt(
                            '${imageGeneration.prompt}, $prompt',
                          );
                          showSnackBar(
                            context,
                            'プロンプトに _PROMPT_ を追加しました'.i18n.replaceAllMapped(
                                  RegExp(r'_PROMPT_'),
                                  (match) => prompt,
                                ),
                          );
                        }),
                    const SizedBox(height: 8),
                    Text(
                      'ネガティブプロンプト'.i18n,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    PromptsContainer(
                        prompts: result.negativePrompt,
                        onPressed: (String negativePrompt) {
                          imageGenerationNotifier.updateNegativePrompt(
                            '${imageGeneration.negativePrompt}, $negativePrompt',
                          );
                          showSnackBar(
                            context,
                            'ネガティブプロンプトに _NEGATIVE_PROMPT_ を追加しました'
                                .i18n
                                .replaceAllMapped(
                                  RegExp(r'_NEGATIVE_PROMPT_'),
                                  (match) => negativePrompt,
                                ),
                          );
                        }),
                    const SizedBox(height: 8),
                    GenerationSettingContainer(
                      name: 'モデル'.i18n,
                      value: result.model.name.split('.')[0],
                      onPressed: () {
                        imageGenerationNotifier.updateModel(result.model.name);
                        showSnackBar(context, 'モデルを設定しました'.i18n);
                      },
                    ),
                    const SizedBox(height: 8),
                    GenerationSettingContainer(
                      name: 'サイズ'.i18n,
                      value: toGenerationSizeTypeText(result.sizeType),
                      onPressed: () {
                        imageGenerationNotifier.updateSizeType(result.sizeType);
                        showSnackBar(context, 'サイズを設定しました'.i18n);
                      },
                    ),
                    const SizedBox(height: 8),
                    GenerationSettingContainer(
                      name: 'Seed'.i18n,
                      value: result.seed.toInt().toString(),
                      onPressed: () {
                        imageGenerationNotifier.updateSeed(result.seed.toInt());
                        showSnackBar(context, 'Seedを設定しました'.i18n);
                      },
                    ),
                    const SizedBox(height: 8),
                    GenerationSettingContainer(
                      name: 'Steps'.i18n,
                      value: result.steps.toString(),
                      onPressed: () {
                        imageGenerationNotifier.updateSteps(result.steps);
                        showSnackBar(context, 'Stepsを設定しました'.i18n);
                      },
                    ),
                    const SizedBox(height: 8),
                    GenerationSettingContainer(
                      name: 'Scale'.i18n,
                      value: result.scale.toString(),
                      onPressed: () {
                        imageGenerationNotifier.updateScale(result.scale);
                        showSnackBar(context, 'Scaleを設定しました'.i18n);
                      },
                    ),
                    const SizedBox(height: 8),
                    GenerationSettingContainer(
                      name: 'Sampler'.i18n,
                      value: result.sampler.toString(),
                      onPressed: () {
                        imageGenerationNotifier.updateSampler(result.sampler);
                        showSnackBar(context, 'Samplerを設定しました'.i18n);
                      },
                    ),
                    const SizedBox(height: 8),
                    GenerationSettingContainer(
                      name: 'VAE'.i18n,
                      value: result.vae.toString(),
                      onPressed: () {
                        if (result.vae != 'None') {
                          imageGenerationNotifier
                              .updateVae(result.vae!.split('.')[0]);
                        } else {
                          imageGenerationNotifier.updateVae(result.vae!);
                        }
                        showSnackBar(context, 'VAEを設定しました'.i18n);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: FilledButton(
            child: Text('復元する'.i18n),
            onPressed: () {
              reuseImageGenerationTask(result, imageGenerationNotifier);
              showSnackBar(context, '生成情報を復元しました'.i18n);
            },
          ),
        );
      },
    );
  }

  void showSnackBar(BuildContext context, String text) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(content: Text(text)),
      );
  }

  onRating(BuildContext context, String nanoId, int rating) {
    updateRatingImageGenerationTask((builder) {
      return builder
        ..vars.input.nanoid = nanoId
        ..vars.input.rating = rating;
    });
  }

  onProtect(BuildContext context, String nanoId, bool isProtected) {
    updateProtectedImageGenerationTask((builder) {
      return builder
        ..vars.input.nanoid = nanoId
        ..vars.input.isProtected = isProtected;
    });
  }

  void onDelete(
    BuildContext context,
    String nanoId,
  ) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return DeleteImageGenerationTaskDialog(
          onCancel: () {
            context.pop();
          },
          onAccept: () async {
            context.pop();
            await deleteImageGenerationTask((builder) {
              return builder..vars.input.nanoid = nanoId;
            });
            // ignore: use_build_context_synchronously
            showSnackBar(context, '生成履歴を削除しました'.i18n);
            // ignore: use_build_context_synchronously
            context.pop();
          },
        );
      },
    );
  }
}
