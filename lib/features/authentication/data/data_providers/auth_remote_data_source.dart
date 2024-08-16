import '../models/user_model.dart';
import '../../../../core/error/exceptions.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> authenticate(String email, String password);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Map<String, UserModel> _fakeUsers = {
    "user1@example.com": UserModel(id: "1", email: "user1@example.com"),
    "user2@example.com": UserModel(id: "2", email: "user2@example.com"),
    "user3@example.com": UserModel(id: "3", email: "user3@example.com"),
    // Add more users as needed
  };

  @override
  Future<UserModel> authenticate(String email, String password) async {
    await Future.delayed(Duration(seconds: 1)); // Simulate network latency

    if (_fakeUsers.containsKey(email) && password == "password") {
      return _fakeUsers[email]!;
    } else {
      throw ServerException();
    }
  }
}
