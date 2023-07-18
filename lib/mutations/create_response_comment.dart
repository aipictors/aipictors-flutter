import 'package:aipictors/graphql/mutations/__generated__/create_response_comment.data.gql.dart';
import 'package:aipictors/graphql/mutations/__generated__/create_response_comment.req.gql.dart';
import 'package:aipictors/mutations/mutate.dart';

typedef Fn<T> = T Function(T);

typedef Builder = Fn<GCreateResponseCommentReqBuilder>;

Future<GCreateResponseCommentData?> createResponseComment(Builder b) async {
  return mutate(GCreateResponseCommentReq(b));
}
