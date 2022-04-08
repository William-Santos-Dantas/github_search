import 'package:flutter/material.dart';

import 'profile_card.dart';

class ProfilePanel extends StatelessWidget {
  const ProfilePanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 0, 15, 10),
      child: Stack(
        children: [
          const ProfileCard(),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: const CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/78877517?v=4'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
