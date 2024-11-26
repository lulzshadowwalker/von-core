import 'package:core/model/bus.dart';
import 'package:core/model/driver.dart';
import 'package:core/model/route.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip.freezed.dart';

@freezed
class Trip with _$Trip {
  const factory Trip({
    required String id,
    required Bus bus,
    required Driver driver,
    required Route route,
    DateTime? departuredAt,
    DateTime? arrivedAt,
    // required List<Passenger> passengers,
  }) = _Trip;
}
