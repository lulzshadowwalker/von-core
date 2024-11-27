import 'package:core/contract/auth_repository.dart';
import 'package:core/error/auth_error.dart';
import 'package:either_dart/either.dart';

class AuthService {
  const AuthService(this.repository);

  final AuthRepository repository;

  Future<Either<AccessToken, AuthError>> login(
    String email,
    String password, {
    String? deviceToken,
    String? deviceName,
  }) async =>
      // TODO: Add logging
      repository.login(
        email,
        password,
        deviceToken: deviceToken,
        deviceName: deviceName,
      );

  Future<Either<AccessToken, AuthError>> register(
    String name,
    String email,
    String password, {
    String? deviceToken,
    String? deviceName,
  }) async =>
      repository.register(
        name,
        email,
        password,
        deviceToken: deviceToken,
        deviceName: deviceName,
      );

  Future<Either<void, AuthError>> logout(
    String accessToken, {
    String? deviceToken,
  }) async =>
      repository.logout(accessToken, deviceToken: deviceToken);

  Future<Either<void, AuthError>> forgotPassword(String email) async =>
      repository.forgotPassword(email);
}
