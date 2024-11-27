import 'package:core/error/auth_error.dart';
import 'package:either_dart/either.dart';

typedef AccessToken = String;

abstract interface class AuthRepository {
  Future<Either<AccessToken, AuthError>> login(
    String email,
    String password, {
    String? deviceToken,
    String? deviceName,
  });

  Future<Either<AccessToken, AuthError>> register(
    String name,
    String email,
    String password, {
    String? deviceToken,
    String? deviceName,
  });

  Future<Either<void, AuthError>> logout(
    String accessToken, {
    String? deviceToken,
  });

  Future<Either<void, AuthError>> forgotPassword(String email);
}
