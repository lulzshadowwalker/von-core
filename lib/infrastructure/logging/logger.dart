import 'package:core/contract/von_logger.dart';
import 'package:core/infrastructure/logging/log_printer.dart';
import 'package:logger/logger.dart' as log;

class Logger extends VonLogger {
  Logger(super.tag);

  late final _log = log.Logger(
    printer: VonLogPrinter(tag),
  );

  @override
  void t(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    _log.t(message, time: time, error: error, stackTrace: stackTrace);
  }

  @override
  void d(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    _log.d(message, time: time, error: error, stackTrace: stackTrace);
  }

  @override
  void e(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    _log.e(message, time: time, error: error, stackTrace: stackTrace);
  }

  @override
  void f(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    _log.f(message, time: time, error: error, stackTrace: stackTrace);
  }

  @override
  void i(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    _log.i(message, time: time, error: error, stackTrace: stackTrace);
  }

  @override
  void w(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    _log.w(message, time: time, error: error, stackTrace: stackTrace);
  }
}
