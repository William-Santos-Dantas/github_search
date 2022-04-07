import 'package:get/get.dart';

import '../../repository/user/user_repository.dart';
import '../../repository/user/user_repository_impl.dart';
import '../../services/user/user_service.dart';
import '../../services/user/user_service_impl.dart';
import 'home_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserRepository>(
        () => UserRepositoryImpl(restClient: Get.find()));

    Get.lazyPut<UserService>(
        () => UserServiceImpl(userRepository: Get.find()));
    Get.lazyPut(() => HomeController(userService: Get.find()));
  }
}