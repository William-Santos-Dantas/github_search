import 'package:flutter/material.dart';

import '../../../models/user_model.dart';
import 'profile_card.dart';

class ProfilePanel extends StatelessWidget {
  final UserModel? user;
  const ProfilePanel({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var userData = user;
    if (userData != null) {
      return Container(
        margin: const EdgeInsets.fromLTRB(15, 0, 15, 10),
        child: Stack(
          children: [
            ProfileCard(user: userData),
            Container(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(
                  userData.avatar_url,
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
