import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: const [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/78877517?v=4',
              ),
            ),
            title: Text(
              'William Santos Dantas',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
