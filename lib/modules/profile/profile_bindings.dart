import 'package:get/get.dart';

import '../../repository/user/user_repository.dart';
import '../../repository/user/user_repository_impl.dart';
import '../../services/user/user_service.dart';
import '../../services/user/user_service_impl.dart';
import 'profile_controller.dart';

class ProfileBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserRepository>(
        () => UserRepositoryImpl(restClient: Get.find()));

    Get.lazyPut<UserService>(
        () => UserServiceImpl(userRepository: Get.find()));
    Get.lazyPut(() => ProfileController(userService: Get.find()));
  }
}