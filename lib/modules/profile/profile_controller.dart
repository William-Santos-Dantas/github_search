import 'package:get/get.dart';
import 'package:profile_github/models/user_model.dart';
import '../../application/ui/loader/loader_mixin.dart';
import '../../application/ui/messages/messages_mixin.dart';
import '../../services/user/user_service.dart';

class ProfileController extends GetxController with LoaderMixin, MessagesMixin {
  final _loading = false.obs;
  final _message = Rxn<MessageModel>();
  final UserService _userService;

  ProfileController({required UserService userService})
      : _userService = userService;

  @override
  void onInit() {
    super.onInit();
    loaderListener(_loading);
    messageListener(_message);
  }

}
