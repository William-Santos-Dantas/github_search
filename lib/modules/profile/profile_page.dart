import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../application/ui/widgets/header_background.dart';
import '../../application/ui/widgets/profile_panel.dart';
import 'profile_controller.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const HeaderBackground(),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Obx(
                () => ProfilePanel(
                  user: controller.user,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
