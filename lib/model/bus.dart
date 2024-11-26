import 'package:freezed_annotation/freezed_annotation.dart';

part 'bus.freezed.dart';

@freezed
class Bus with _$Bus {
  const factory Bus({
    required String id,
    required String licensePlate,
    required int capacity,
  }) = _Bus;
}
