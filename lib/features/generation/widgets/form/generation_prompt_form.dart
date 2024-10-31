import 'package:aipictors/default.i18n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GenerationPromptInputField extends HookConsumerWidget {
  const GenerationPromptInputField({
    super.key,
    required this.initialPrompt,
    required this.initialNegativePrompt,
    required this.onPromptChanged,
    required this.onNegativePromptChanged,
  });

  final String initialPrompt;

  final String initialNegativePrompt;

  final Function(String prompt) onPromptChanged;

  final Function(String negativePrompt) onNegativePromptChanged;

  @override
  Widget build(context, ref) {
    final promptController = useTextEditingController(text: initialPrompt);

    final negativePromptController =
        useTextEditingController(text: initialNegativePrompt);

    FocusNode promptFocusNode = useFocusNode();

    FocusNode negativePromptFocusNode = useFocusNode();

    useEffect(() {
      // 入力中にカーソルが最後尾へ移動しないように、入力欄にフォーカスがある時は何もしない
      if (promptFocusNode.hasFocus || negativePromptFocusNode.hasFocus) {
        return null;
      }
      promptController.text = initialPrompt;
      negativePromptController.text = initialNegativePrompt;
      return null;
    }, [initialPrompt, initialNegativePrompt]);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [
          const SizedBox(width: 8),
          Text(
            'プロンプト'.i18n,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ]),
        TextField(
          focusNode: promptFocusNode,
          controller: promptController,
          maxLines: null,
          onChanged: (value) {
            onPromptChanged(value);
          },
          onTapOutside: (event) {
            promptFocusNode.unfocus();
          },
          decoration: InputDecoration(
            hintText: 'プロンプト'.i18n,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.outlineVariant),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Row(children: [
          const SizedBox(width: 8),
          Text(
            'ネガティブプロンプト'.i18n,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ]),
        TextField(
          focusNode: negativePromptFocusNode,
          controller: negativePromptController,
          maxLines: null,
          onChanged: (value) {
            onNegativePromptChanged(value);
          },
          onTapOutside: (event) {
            negativePromptFocusNode.unfocus();
          },
          decoration: InputDecoration(
            hintText: 'ネガティブプロンプト'.i18n,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.outlineVariant,
              ),
            ),
          ),
        )
      ],
    );
  }
}
