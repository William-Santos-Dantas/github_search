import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../../models/user_model.dart';
import 'social_item.dart';

class ProfileInfo extends StatelessWidget {
  final UserModel user;
  const ProfileInfo({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocialItem(label: 'Repository', value: user.public_repos.toString()),
              SocialItem(label: 'Gists', value: user.public_gists.toString()),
              SocialItem(label: 'Followers', value: user.followers.toString()),
              SocialItem(label: 'Following', value: user.following.toString()),
            ],
          ),
          const SizedBox(height: 10),
          AutoSizeText(
            user.name.isEmpty ? user.login : user.name,
            maxLines: 1,
            style: TextStyle(
              fontSize: 25,
              color: Colors.grey[700],
              fontWeight: FontWeight.w700,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.location_pin, size: 20, color: Colors.grey[400]),
              const SizedBox(width: 5),
              Text(
                user.location.isEmpty ? 'No Location' : user.location,
                overflow: TextOverflow.visible,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  wordSpacing: 1,
                  letterSpacing: .5,
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          AutoSizeText(
            user.bio.isEmpty ? 'No Bio' : user.bio,
            overflow: TextOverflow.visible,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 14,
              wordSpacing: 1,
              letterSpacing: .5,
              color: Colors.grey[500],
            ),
          ),
        ],
      ),
    );
  }
}
