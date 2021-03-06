import 'package:profile_github/models/user_model.dart';

import '../../application/rest_client/rest_client.dart';
import 'user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final RestClient _restClient;

  UserRepositoryImpl({required RestClient restClient})
      : _restClient = restClient;

  @override
  Future<List<UserModel>> getUsers() async {
    final result = await _restClient.get<List<UserModel>>(
      'users',
      decoder: (data) {
        final resultData = data;
        if (resultData != null) {
          return resultData
              .map<UserModel>((g) => UserModel.fromMap(g))
              .toList();
        }
        return <UserModel>[];
      },
    );

    if (result.hasError) {
      throw Exception('Erro ao Buscar Usuarios [${result.statusText}]');
    }

    return result.body ?? <UserModel>[];
  }

  @override
  Future<List<UserModel>> filterUsers(String search) async {
    final result = await _restClient.get<List<UserModel>>(
      'search/users',
      query: {'q': search},
      decoder: (data) {
        final resultData = data['items'];
        if (resultData != null) {
          return resultData
              .map<UserModel>((g) => UserModel.fromMap(g))
              .toList();
        }
        return <UserModel>[];
      },
    );

    if (result.hasError) {
      throw Exception('Erro ao Buscar Usuarios [${result.statusText}]');
    }

    return result.body ?? <UserModel>[];
  }

  @override
  Future<UserModel> getUser(String user) async {
    final result = await _restClient.get<Map<String, dynamic>>(
      'users/$user',
    );
    return UserModel.fromMap(result.body!);
  }
}
