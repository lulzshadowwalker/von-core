class AuthError {
  const AuthError(this.message);

  final String message;

  @override
  String toString() => 'AuthError: $message';
}

class AuthConflictError extends AuthError {
  const AuthConflictError() : super('User already exists');
}

class UnknownAuthError extends AuthError {
  const UnknownAuthError(super.message);
}

class AuthTooManyRequestsError extends AuthError {
  const AuthTooManyRequestsError() : super('Too many requests');
}
