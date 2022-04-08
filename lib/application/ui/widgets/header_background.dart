import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderBackground extends StatelessWidget {
  const HeaderBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: 300,
      child: Image.asset(
        'assets/images/mount.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
