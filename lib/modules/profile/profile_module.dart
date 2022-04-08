import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../application/modules/module.dart';
import 'profile_bindings.dart';
import 'profile_page.dart';

class ProfileModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/profile',
      page: () => const ProfilePage(),
      binding: ProfileBindings(),
    ),
  ];
}
