import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers/query_user_works_provider.dart';
import '../grid/work_grid_view.dart';
import '../image/grid_work_image.dart';

class UserWorksContainer extends HookConsumerWidget {
  const UserWorksContainer({
    Key? key,
    required this.userId,
  }) : super(key: key);

  final String userId;

  @override
  Widget build(context, ref) {
    final queryUserWorks = ref.watch(queryUserWorksProvider(userId));

    return queryUserWorks.when(
      data: (data) {
        if (data.data?.user?.works == null) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            color: Theme.of(context).disabledColor,
          );
        }
        final works = data.data!.user!.works;
        // return Column(
        //   children: [
        //     for (final work in works!)
        //       GridWorkImageContainer(
        //         downloadURL: work.image!.downloadURL,
        //       ),
        //   ],
        // );
        return WorkGridView(
          itemCount: works.length,
          itemBuilder: (context, index) {
            final work = works[index];
            return GestureDetector(
              onTap: () {
                context.push('/works/${work.id}');
              },
              child: GridWorkImage(
                imageUrl: work.image!.downloadURL,
              ),
            );
          },
        );
      },
      error: (error, stackTrace) {
        return const Text("エラー");
      },
      loading: () {
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
