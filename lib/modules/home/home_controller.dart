import 'package:get/get.dart';
import 'package:profile_github/models/user_model.dart';
import '../../application/ui/loader/loader_mixin.dart';
import '../../application/ui/messages/messages_mixin.dart';
import '../../services/user/user_service.dart';

class HomeController extends GetxController with LoaderMixin, MessagesMixin {
  final _loading = false.obs;
  final _message = Rxn<MessageModel>();
  final UserService _userService;
  String text = 'teste';
  final users = <UserModel>[].obs;

  HomeController({required UserService userService})
      : _userService = userService;

  @override
  void onInit() {
    super.onInit();
    loaderListener(_loading);
    messageListener(_message);
  }

  @override
  void onReady() async {
    await getUsers();
  }

  Future<void> getUsers() async {
    try {
      _loading.toggle();
      final usersData = await _userService.getUsers();
      users.assignAll(usersData);
      _loading.toggle();
    } catch (e, s) {
      _loading.toggle();
      print(e);
      print(s);
      _message(
        MessageModel.error(
          title: 'Erro',
          message: 'Erro ao carregar Dados dos Usuarios',
        ),
      );
    }
  }

  Future<void> filterUsers(String search) async {
    print(search);
    try {
      final usersData = await _userService.filterUsers(search);
      users.assignAll(usersData);
    } catch (e, s) {
      print(e);
      print(s);
      _message(
        MessageModel.error(
          title: 'Erro',
          message: 'Erro ao carregar Dados dos Usuarios',
        ),
      );
    }
  }
}
