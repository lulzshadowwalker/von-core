import 'dart:io';

import 'package:core/contract/auth_repository.dart';
import 'package:core/error/auth_error.dart';
import 'package:core/infrastructure/logging/logger.dart';
import 'package:core/repository/laravel_base_repository.dart';
import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';

class LaravelAuthRepository extends LaravelBaseRepository
    implements AuthRepository {
  LaravelAuthRepository(super.dio);

  final _logger = Logger('LaravelAuthRepository');

  @override
  Future<Either<AccessToken, AuthError>> login(String email, String password,
      {String? deviceToken, String? deviceName}) async {
    final response = await dio.post(endpoint('auth/login'), data: {
      'data': {
        'attributes': {
          'email': email,
          'password': password,
          'deviceToken': deviceToken,
          'deviceName': deviceName,
        }
      }
    });

    if (response.statusCode == HttpStatus.ok) {
      // TODO: Add logging
      return Left(response.data['data']['attributes']['token']);
    }

    if (response.statusCode == HttpStatus.conflict) {
      return const Right(AuthConflictError());
    }

    return Right(
        UnknownAuthError('Failed to login because ${response.statusMessage}'));
  }

  @override
  Future<Either<AccessToken, AuthError>> register(
      String name, String email, String password,
      {String? deviceToken, String? deviceName}) async {
    final response = await dio.post(endpoint('auth/register'), data: {
      'data': {
        'attributes': {
          'name': name,
          'email': email,
          'password': password,
          'passwordConfirmation': password,
          'deviceToken': deviceToken,
          'deviceName': deviceName,
        }
      }
    });

    if (response.statusCode == HttpStatus.created) {
      return Left(response.data['data']['attributes']['token']);
    }

    return Right(UnknownAuthError(
        'Failed to register because ${response.statusMessage}'));
  }

  @override
  Future<Either<void, AuthError>> logout(String accessToken,
      {String? deviceToken}) async {
    final response = await dio.post(
      endpoint('auth/logout'),
      data: {
        'data': {
          'attributes': {
            'deviceToken': deviceToken,
          }
        }
      },
      options: Options(
        headers: {
          'Authorization': 'Bearer $accessToken',
        },
      ),
    );

    if (response.statusCode == HttpStatus.ok) {
      return const Left(null);
    }

    return Right(
        UnknownAuthError('Failed to logout because ${response.statusMessage}'));
  }

  @override
  Future<Either<void, AuthError>> forgotPassword(String email) async {
    final response = await dio.post(
      endpoint('auth/forgot-password'),
      data: {
        'data': {
          'attributes': {
            'email': email,
          }
        }
      },
    );

    if (response.statusCode == HttpStatus.ok) {
      return const Left(null);
    }

    if (response.statusCode == HttpStatus.unprocessableEntity) {
      return const Right(AuthTooManyRequestsError());
    }

    return Right(UnknownAuthError(
        'Forgot password failed because ${response.statusMessage}'));
  }
}
