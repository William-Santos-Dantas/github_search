
import '../../models/user_model.dart';

abstract class UserRepository {
  Future<List<UserModel>> getUsers();
  Future<List<UserModel>> filterUsers(String search);
  Future<UserModel> getUser(String user);
}