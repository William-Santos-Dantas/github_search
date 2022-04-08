import 'package:profile_github/models/user_model.dart';
import '../../repository/user/user_repository.dart';
import 'user_service.dart';

class UserServiceImpl implements UserService {

final UserRepository _userRepository;

  UserServiceImpl({required UserRepository userRepository})
      : _userRepository = userRepository;


  @override
  Future<List<UserModel>> getUsers() => _userRepository.getUsers();

  @override
  Future<List<UserModel>> filterUsers(String search) => _userRepository.filterUsers(search);

}