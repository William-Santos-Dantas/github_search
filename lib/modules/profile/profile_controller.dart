import 'package:get/get.dart';
import 'package:profile_github/models/user_model.dart';
import '../../application/ui/loader/loader_mixin.dart';
import '../../application/ui/messages/messages_mixin.dart';
import '../../services/user/user_service.dart';

class ProfileController extends GetxController with LoaderMixin, MessagesMixin {
  final _loading = false.obs;
  final _message = Rxn<MessageModel>();
  final UserService _userService;
  final _user = Rxn<UserModel>();

  get user => _user.value;

  ProfileController({required UserService userService})
      : _userService = userService;

  @override
  void onInit() async {
    await getUser();
    loaderListener(_loading);
    messageListener(_message);
    super.onInit();
  }

  Future<void> getUser() async {
    try {
      _loading.toggle();
      final userData = await _userService.getUser(Get.arguments);
      _user(userData);
      _loading.toggle();
    } catch (e, s) {
      _loading.toggle();
      print(e);
      print(s);
      _message(
        MessageModel.error(
          title: 'Erro',
          message: 'Erro ao carregar Dados dos Usuario',
        ),
      );
    }
  }
}
