import 'package:freezed_annotation/freezed_annotation.dart';

part 'passenger.freezed.dart';

@freezed
class Passenger with _$Passenger {
  const Passenger._();

  const factory Passenger({
    required String id,
    required String name,
    required String email,
    required String avatar,
  }) = _Passenger;

  // TODO: I believe this should exist on the repository itself
  factory Passenger.fromMap(Map<String, dynamic> map) => Passenger(
        id: map['id'],
        name: map['attributes']['name'],
        email: map['attributes']['email'],
        avatar: map['attributes']['avatar'],
      );
}
