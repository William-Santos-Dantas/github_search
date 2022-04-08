import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile_github/application/ui/widgets/custom_text_field.dart';
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomTextField(
          onSearch: (search) {
            controller.filterUsers(search);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Obx(
        () => SafeArea(
          child: ListView.builder(
            itemCount: controller.users.length,
            padding: const EdgeInsets.all(15),
            itemBuilder: (context, index) {
              var user = controller.users[index];
              return Card(
                elevation: 10,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      user.avatar_url,
                    ),
                  ),
                  title: Text(
                    user.login,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
