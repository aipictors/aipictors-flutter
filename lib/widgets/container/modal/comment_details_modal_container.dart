import 'package:aipictors/default.i18n.dart';
import 'package:aipictors/graphql/__generated__/work_comments.req.gql.dart';
import 'package:aipictors/mutations/create_response_comment.dart';
import 'package:aipictors/providers/auth_state_provider.dart';
import 'package:aipictors/providers/client_provider.dart';
import 'package:aipictors/widgets/container/loading_container.dart';
import 'package:aipictors/widgets/container/modal_header_container.dart';
import 'package:aipictors/widgets/container/work_comment_form_container.dart';
import 'package:aipictors/widgets/list_tile/work_comment_list_tile.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CommentDetailsModalContainer extends HookConsumerWidget {
  const CommentDetailsModalContainer({
    Key? key,
    required this.workId,
    required this.index,
  }) : super(key: key);

  final String workId;
  final int index;

  @override
  Widget build(context, ref) {
    final authState = ref.watch(authStateProvider);

    final client = ref.watch(clientProvider);

    var commentId = '';

    if (client.value == null) {
      return const LoadingContainer();
    }

    final request = GWorkCommentsReq((builder) {
      return builder..vars.workId = workId;
    });

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.8,
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SafeArea(
          child: Column(
            children: [
              ModalHeaderContainer(
                title: Text(
                  'コメント'.i18n,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                    child: Column(children: [
                  Operation(
                      operationRequest: request,
                      builder: (context, response, error) {
                        if (error != null) {
                          return const SizedBox();
                        }
                        if (response == null || response.loading) {
                          return const LoadingContainer();
                        }
                        if (response.graphqlErrors != null) {
                          return const SizedBox();
                        }
                        final comment = response.data?.work?.comments[index];
                        commentId = comment!.id;
                        return Column(
                          children: [
                            WorkCommentListTile(
                              comment: comment,
                              isResponse: false,
                              onTap: () {},
                            )
                          ],
                        );
                      },
                      client: client.value!)
                ])),
              ),
              const Divider(height: 0),
              if (authState.value?.uid == null)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8 * 2,
                    vertical: 8,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: FilledButton.tonal(
                      onPressed: null,
                      child: Text('ログインするとコメントできます'.i18n),
                    ),
                  ),
                ),
              if (authState.value?.uid != null)
                WorkCommentFormContainer(
                  onSubmit: (text, stickerId) async {
                    print("submit");
                    await createResponseComment((builder) {
                      return builder
                        ..vars.input.commentId = commentId
                        ..vars.input.text = text
                        ..vars.input.stickerId = stickerId;
                    });
                    print("req");
                    client.value?.requestController.add(request);
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}