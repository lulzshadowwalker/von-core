// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bus.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Bus {
  String get id => throw _privateConstructorUsedError;
  String get licensePlate => throw _privateConstructorUsedError;
  int get capacity => throw _privateConstructorUsedError;

  /// Create a copy of Bus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusCopyWith<Bus> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusCopyWith<$Res> {
  factory $BusCopyWith(Bus value, $Res Function(Bus) then) =
      _$BusCopyWithImpl<$Res, Bus>;
  @useResult
  $Res call({String id, String licensePlate, int capacity});
}

/// @nodoc
class _$BusCopyWithImpl<$Res, $Val extends Bus> implements $BusCopyWith<$Res> {
  _$BusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Bus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? licensePlate = null,
    Object? capacity = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      licensePlate: null == licensePlate
          ? _value.licensePlate
          : licensePlate // ignore: cast_nullable_to_non_nullable
              as String,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusImplCopyWith<$Res> implements $BusCopyWith<$Res> {
  factory _$$BusImplCopyWith(_$BusImpl value, $Res Function(_$BusImpl) then) =
      __$$BusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String licensePlate, int capacity});
}

/// @nodoc
class __$$BusImplCopyWithImpl<$Res> extends _$BusCopyWithImpl<$Res, _$BusImpl>
    implements _$$BusImplCopyWith<$Res> {
  __$$BusImplCopyWithImpl(_$BusImpl _value, $Res Function(_$BusImpl) _then)
      : super(_value, _then);

  /// Create a copy of Bus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? licensePlate = null,
    Object? capacity = null,
  }) {
    return _then(_$BusImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      licensePlate: null == licensePlate
          ? _value.licensePlate
          : licensePlate // ignore: cast_nullable_to_non_nullable
              as String,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BusImpl implements _Bus {
  const _$BusImpl(
      {required this.id, required this.licensePlate, required this.capacity});

  @override
  final String id;
  @override
  final String licensePlate;
  @override
  final int capacity;

  @override
  String toString() {
    return 'Bus(id: $id, licensePlate: $licensePlate, capacity: $capacity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.licensePlate, licensePlate) ||
                other.licensePlate == licensePlate) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, licensePlate, capacity);

  /// Create a copy of Bus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusImplCopyWith<_$BusImpl> get copyWith =>
      __$$BusImplCopyWithImpl<_$BusImpl>(this, _$identity);
}

abstract class _Bus implements Bus {
  const factory _Bus(
      {required final String id,
      required final String licensePlate,
      required final int capacity}) = _$BusImpl;

  @override
  String get id;
  @override
  String get licensePlate;
  @override
  int get capacity;

  /// Create a copy of Bus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusImplCopyWith<_$BusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
