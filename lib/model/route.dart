import 'package:core/model/geo_point.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'route.freezed.dart';

@freezed
class Route with _$Route {
  const factory Route({
    required String id,
    required GeoPoint from,
    required GeoPoint to,
  }) = _Route;
}
