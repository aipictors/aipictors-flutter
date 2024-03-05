import 'package:aipictors/default.i18n.dart';
import 'package:aipictors/graphql/__generated__/stickers.req.gql.dart';
import 'package:aipictors/providers/client_provider.dart';
import 'package:aipictors/providers/config_provider.dart';
import 'package:aipictors/widgets/app_bar/search_app_bar.dart';
import 'package:aipictors/widgets/builder/operation_builder.dart';
import 'package:aipictors/widgets/container/error/data_empty_error_container.dart';
import 'package:aipictors/widgets/container/error/unexpected_error_container.dart';
import 'package:aipictors/widgets/container/loading_container.dart';
import 'package:aipictors/widgets/view/stickers_grid_view.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// スタンプ広場
class StickersSpaceScreen extends HookConsumerWidget {
  const StickersSpaceScreen({
    super.key,
  });

  @override
  Widget build(context, ref) {
    final isFilled = useState(false);
    final client = ref.watch(clientProvider);
    final config = ref.watch(configProvider);

    if (client.value == null) {
      return const LoadingContainer();
    }

    final searchContainer = SearchContainer(
      isFilled: isFilled.value,
      initialText: '',
      onSubmit: (controller) {
        if (!isFilled.value) {
          return null;
        }
        final text = controller.text;
        FirebaseAnalytics.instance.logSearch(searchTerm: text);
        isFilled.value = false;
        controller.clear();
        context.push('/stickers/search/$text');
      },
      onFill: (value) {
        isFilled.value = value;
      },
    );

    return OperationBuilder(
      client: client.value!,
      operationRequest: GStickersReq((builder) {
        return builder
          ..vars.limit = config.graphqlQueryLimit
          ..vars.offset = 0;
      }),
      builder: (context, response) {
        final stickerList = response.data?.stickers;
        if (stickerList == null) {
          return const UnexpectedErrorContainer();
        }
        if (stickerList.isEmpty) {
          return DataEmptyErrorContainer(
            message: 'スタンプは無いみたい。'.i18n,
          );
        }
        return ListView(children: [
          const SizedBox(height: 8),
          searchContainer,
          const SizedBox(height: 8),
          StickersGridView(
            stickerList: stickerList,
            physics: const NeverScrollableScrollPhysics(),
          ),
        ]);
      },
    );
  }
}