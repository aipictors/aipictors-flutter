import 'package:aipictors/default.i18n.dart';
import 'package:aipictors/features/generation/__generated__/image_models.data.gql.dart';
import 'package:aipictors/features/generation/__generated__/image_models.req.gql.dart';
import 'package:aipictors/features/generation/widgets/generation_liked_model_picker.dart';
import 'package:aipictors/features/generation/widgets/generation_model_picker.dart';
import 'package:aipictors/providers/client_provider.dart';
import 'package:aipictors/widgets/builder/operation_builder.dart';
import 'package:aipictors/widgets/error/unexpected_error_container.dart';
import 'package:aipictors/widgets/loading_progress.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// TODO: タブ切り替え時に一瞬高さが変わってしまう問題を修正する
class GenerationModelPickerTab extends HookConsumerWidget {
  const GenerationModelPickerTab({
    super.key,
    required this.selectedModelName,
    required this.onSelected,
    required this.onShowMoreButtonPressed,
    required this.onShowMoreLikedModelsButtonPressed,
    this.prevSelectedModelName,
  });

  final String selectedModelName;

  final Function(String modelName, String? prevSelectedModelName) onSelected;

  final VoidCallback onShowMoreButtonPressed;

  final Function(BuiltList<GImageModelsData_imageModels> models)
      onShowMoreLikedModelsButtonPressed;

  final String? prevSelectedModelName;

  @override
  Widget build(context, ref) {
    final client = ref.watch(clientProvider);

    final index = useState(0);

    final controller = useTabController(initialLength: 2);

    final selectedModel = useState<GImageModelsData_imageModels?>(null);

    final prevSelectedModelName = useState<String?>(null);

    if (client.value == null) {
      return const LoadingProgress();
    }

    final request = GImageModelsReq();

    if (client.value == null) {
      return const LoadingProgress();
    }
    return OperationBuilder(
      client: client.value!,
      operationRequest: request,
      builder: ((context, response) {
        final models = response.data?.imageModels;
        if (models == null) {
          client.value?.requestController.add(request.rebuild((builder) {}));
          return const UnexpectedErrorContainer();
        }

        // setState() or markNeedsBuild() called during buildを防ぐため
        WidgetsBinding.instance.addPostFrameCallback((_) {
          final int selectedModelIndex =
              models.indexWhere(((p0) => p0.name == selectedModelName));
          if (selectedModelIndex != -1) {
            selectedModel.value = models[selectedModelIndex];
          } else {
            // 選択中のモデルがない場合、生成時にエラーにならないように一番上のモデルを選択する
            onSelected(models[0].name, null);
          }
        });
        if (selectedModel.value == null) {
          return const LoadingProgress();
        }
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              width: 1,
              color: Theme.of(context).colorScheme.surfaceContainerHighest,
            ),
          ),
          child: DefaultTabController(
            length: 2,
            child: Column(children: [
              TabBar(
                dividerHeight: 0,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Theme.of(context).colorScheme.inversePrimary),
                labelColor: Theme.of(context).colorScheme.inverseSurface,
                indicatorSize: TabBarIndicatorSize.tab,
                controller: controller,
                tabs: [Tab(text: 'すべてのモデル'.i18n), Tab(text: 'お気に入り'.i18n)],
                onTap: (value) {
                  index.value = value;
                  controller.animateTo(value);
                },
              ),
              const SizedBox(height: 4),

              // TabBarViewでは高さに上限がないためにエラーになってしまうので、IndexedStackを使用する
              // https://stackoverflow.com/questions/52023610/getting-horizontal-viewport-was-given-unbounded-height-with-tabbarview-in-flu
              IndexedStack(
                index: index.value,
                children: [
                  Visibility(
                    visible: index.value == 0,
                    child: GenerationModelPicker(
                      selectedModelName: selectedModelName,
                      onSelected: (String modelName, prevModelName) =>
                          onSelected(modelName, prevModelName),
                      onShowMoreButtonPressed: onShowMoreButtonPressed,
                      prevSelectedModelName: prevSelectedModelName.value,
                    ),
                  ),
                  Visibility(
                    visible: index.value == 1,
                    child: GenerationLikedModelPicker(
                      models: models,
                      selectedModelName: selectedModelName,
                      onSelected: (String modelName, prevModelName) =>
                          onSelected(modelName, prevModelName),
                      onShowMoreButtonPressed: () =>
                          onShowMoreLikedModelsButtonPressed(models),
                      prevSelectedModelName: prevSelectedModelName.value,
                    ),
                  ),
                ],
              ),
            ]),
          ),
        );
      }),
    );
  }
}
