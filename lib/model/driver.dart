import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver.freezed.dart';

@freezed
class Driver with _$Driver {
  const factory Driver({
    required String id,
    required String name,
    required String email,
    required String avatar,
  }) = _Driver;
}
