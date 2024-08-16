import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../entities/user.dart';
import '../repositories/auth_repository.dart';

class AuthenticateUser {
  final AuthRepository repository;

  AuthenticateUser(this.repository);

  Future<Either<Failure, User>> call(AuthParams params) async {
    return await repository.authenticate(params.email, params.password);
  }
}

class AuthParams {
  final String email;
  final String password;

  AuthParams({required this.email, required this.password});
}
