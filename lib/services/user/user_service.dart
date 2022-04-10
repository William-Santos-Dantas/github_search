
import '../../models/user_model.dart';

abstract class UserService {
  Future<List<UserModel>> getUsers();
  Future<List<UserModel>> filterUsers(String search);
  Future<UserModel> getUser(String user);
}