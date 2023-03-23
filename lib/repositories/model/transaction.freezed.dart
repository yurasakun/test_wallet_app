// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionItem _$TransactionItemFromJson(Map<String, dynamic> json) {
  return _TransactionItem.fromJson(json);
}

/// @nodoc
mixin _$TransactionItem {
  @JsonKey(name: 'type', fromJson: types)
  TypeTransaction get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  double get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'pending')
  bool get pending => throw _privateConstructorUsedError;
  @JsonKey(name: 'date', fromJson: dateTimeFromJson)
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'auth_user')
  String? get authUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionItemCopyWith<TransactionItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionItemCopyWith<$Res> {
  factory $TransactionItemCopyWith(
          TransactionItem value, $Res Function(TransactionItem) then) =
      _$TransactionItemCopyWithImpl<$Res, TransactionItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type', fromJson: types) TypeTransaction type,
      @JsonKey(name: 'total') double total,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'pending') bool pending,
      @JsonKey(name: 'date', fromJson: dateTimeFromJson) DateTime date,
      @JsonKey(name: 'auth_user') String? authUser});
}

/// @nodoc
class _$TransactionItemCopyWithImpl<$Res, $Val extends TransactionItem>
    implements $TransactionItemCopyWith<$Res> {
  _$TransactionItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? total = null,
    Object? name = null,
    Object? description = null,
    Object? pending = null,
    Object? date = null,
    Object? authUser = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeTransaction,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pending: null == pending
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as bool,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      authUser: freezed == authUser
          ? _value.authUser
          : authUser // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionItemCopyWith<$Res>
    implements $TransactionItemCopyWith<$Res> {
  factory _$$_TransactionItemCopyWith(
          _$_TransactionItem value, $Res Function(_$_TransactionItem) then) =
      __$$_TransactionItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type', fromJson: types) TypeTransaction type,
      @JsonKey(name: 'total') double total,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'pending') bool pending,
      @JsonKey(name: 'date', fromJson: dateTimeFromJson) DateTime date,
      @JsonKey(name: 'auth_user') String? authUser});
}

/// @nodoc
class __$$_TransactionItemCopyWithImpl<$Res>
    extends _$TransactionItemCopyWithImpl<$Res, _$_TransactionItem>
    implements _$$_TransactionItemCopyWith<$Res> {
  __$$_TransactionItemCopyWithImpl(
      _$_TransactionItem _value, $Res Function(_$_TransactionItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? total = null,
    Object? name = null,
    Object? description = null,
    Object? pending = null,
    Object? date = null,
    Object? authUser = freezed,
  }) {
    return _then(_$_TransactionItem(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeTransaction,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pending: null == pending
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as bool,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      authUser: freezed == authUser
          ? _value.authUser
          : authUser // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionItem implements _TransactionItem {
  const _$_TransactionItem(
      {@JsonKey(name: 'type', fromJson: types) required this.type,
      @JsonKey(name: 'total') required this.total,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'pending') required this.pending,
      @JsonKey(name: 'date', fromJson: dateTimeFromJson) required this.date,
      @JsonKey(name: 'auth_user') this.authUser});

  factory _$_TransactionItem.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionItemFromJson(json);

  @override
  @JsonKey(name: 'type', fromJson: types)
  final TypeTransaction type;
  @override
  @JsonKey(name: 'total')
  final double total;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'pending')
  final bool pending;
  @override
  @JsonKey(name: 'date', fromJson: dateTimeFromJson)
  final DateTime date;
  @override
  @JsonKey(name: 'auth_user')
  final String? authUser;

  @override
  String toString() {
    return 'TransactionItem(type: $type, total: $total, name: $name, description: $description, pending: $pending, date: $date, authUser: $authUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionItem &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.pending, pending) || other.pending == pending) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.authUser, authUser) ||
                other.authUser == authUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, total, name, description, pending, date, authUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionItemCopyWith<_$_TransactionItem> get copyWith =>
      __$$_TransactionItemCopyWithImpl<_$_TransactionItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionItemToJson(
      this,
    );
  }
}

abstract class _TransactionItem implements TransactionItem {
  const factory _TransactionItem(
      {@JsonKey(name: 'type', fromJson: types)
          required final TypeTransaction type,
      @JsonKey(name: 'total')
          required final double total,
      @JsonKey(name: 'name')
          required final String name,
      @JsonKey(name: 'description')
          required final String description,
      @JsonKey(name: 'pending')
          required final bool pending,
      @JsonKey(name: 'date', fromJson: dateTimeFromJson)
          required final DateTime date,
      @JsonKey(name: 'auth_user')
          final String? authUser}) = _$_TransactionItem;

  factory _TransactionItem.fromJson(Map<String, dynamic> json) =
      _$_TransactionItem.fromJson;

  @override
  @JsonKey(name: 'type', fromJson: types)
  TypeTransaction get type;
  @override
  @JsonKey(name: 'total')
  double get total;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'pending')
  bool get pending;
  @override
  @JsonKey(name: 'date', fromJson: dateTimeFromJson)
  DateTime get date;
  @override
  @JsonKey(name: 'auth_user')
  String? get authUser;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionItemCopyWith<_$_TransactionItem> get copyWith =>
      throw _privateConstructorUsedError;
}
