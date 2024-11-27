/// Generic error class
class Error {
  const Error(this.message);

  final String message;

  @override
  String toString() => 'Error: $message';
}
