import 'package:flutter/material.dart';
import 'package:flutter_facebook/models/user_model.dart';
import 'package:flutter_facebook/widgets/profile_avatar.dart';

class UserCard extends StatelessWidget {
  final User user;
  const UserCard({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ProfileAvatar(imageUrl: user.imageUrl),
          SizedBox(width: 6),
          Text(
            user.name,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
