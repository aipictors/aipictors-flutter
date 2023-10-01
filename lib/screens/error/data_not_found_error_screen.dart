import 'package:aipictors/widgets/container/error/data_not_found_error_container.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// エラー（データが存在しない）
class DataNotFoundErrorScreen extends HookConsumerWidget {
  const DataNotFoundErrorScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(context, ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      body: const DataNotFoundErrorContainer(),
    );
  }
}
