import 'package:freezed_annotation/freezed_annotation.dart';

part 'passenger.freezed.dart';

@freezed
class Passenger with _$Passenger {
  const factory Passenger({
    required String id,
    required String name,
    required String email,
    required String avatar,
  }) = _Passenger;
}
