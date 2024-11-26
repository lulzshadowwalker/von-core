// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passenger.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Passenger {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;

  /// Create a copy of Passenger
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PassengerCopyWith<Passenger> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassengerCopyWith<$Res> {
  factory $PassengerCopyWith(Passenger value, $Res Function(Passenger) then) =
      _$PassengerCopyWithImpl<$Res, Passenger>;
  @useResult
  $Res call({String id, String name, String email, String avatar});
}

/// @nodoc
class _$PassengerCopyWithImpl<$Res, $Val extends Passenger>
    implements $PassengerCopyWith<$Res> {
  _$PassengerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Passenger
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? avatar = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PassengerImplCopyWith<$Res>
    implements $PassengerCopyWith<$Res> {
  factory _$$PassengerImplCopyWith(
          _$PassengerImpl value, $Res Function(_$PassengerImpl) then) =
      __$$PassengerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String email, String avatar});
}

/// @nodoc
class __$$PassengerImplCopyWithImpl<$Res>
    extends _$PassengerCopyWithImpl<$Res, _$PassengerImpl>
    implements _$$PassengerImplCopyWith<$Res> {
  __$$PassengerImplCopyWithImpl(
      _$PassengerImpl _value, $Res Function(_$PassengerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Passenger
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? avatar = null,
  }) {
    return _then(_$PassengerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PassengerImpl implements _Passenger {
  const _$PassengerImpl(
      {required this.id,
      required this.name,
      required this.email,
      required this.avatar});

  @override
  final String id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String avatar;

  @override
  String toString() {
    return 'Passenger(id: $id, name: $name, email: $email, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PassengerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, avatar);

  /// Create a copy of Passenger
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PassengerImplCopyWith<_$PassengerImpl> get copyWith =>
      __$$PassengerImplCopyWithImpl<_$PassengerImpl>(this, _$identity);
}

abstract class _Passenger implements Passenger {
  const factory _Passenger(
      {required final String id,
      required final String name,
      required final String email,
      required final String avatar}) = _$PassengerImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get avatar;

  /// Create a copy of Passenger
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PassengerImplCopyWith<_$PassengerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
