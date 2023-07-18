import 'package:aipictors/widgets/avatar/header_user_profile_avatar.dart';
import 'package:aipictors/widgets/button/follow_button.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserHeaderActionContainer extends HookConsumerWidget {
  const UserHeaderActionContainer({
    Key? key,
    required this.iconImageURL,
    required this.userName,
    required this.userLogin,
  }) : super(key: key);

  final String? iconImageURL;

  final String userName;

  final String userLogin;

  @override
  Widget build(context, ref) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    softWrap: true,
                    style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '@$userLogin',
                    style: TextStyle(color: Theme.of(context).dividerColor),
                  ),
                ],
              ),
              const SizedBox(width: 16),
              Transform.scale(
                scale: 1,
                child: HeaderUserProfileAvatar(imageURL: iconImageURL),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const SizedBox(
            width: double.infinity,
            child: FollowButton(),
          ),
        ],
      ),
    );
  }
}