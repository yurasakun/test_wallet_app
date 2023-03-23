// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionItem _$$_TransactionItemFromJson(Map<String, dynamic> json) =>
    _$_TransactionItem(
      type: types(json['type']),
      total: (json['total'] as num).toDouble(),
      name: json['name'] as String,
      description: json['description'] as String,
      pending: json['pending'] as bool,
      date: dateTimeFromJson(json['date'] as String),
      authUser: json['auth_user'] as String?,
    );

Map<String, dynamic> _$$_TransactionItemToJson(_$_TransactionItem instance) =>
    <String, dynamic>{
      'type': _$TypeTransactionEnumMap[instance.type]!,
      'total': instance.total,
      'name': instance.name,
      'description': instance.description,
      'pending': instance.pending,
      'date': instance.date.toIso8601String(),
      'auth_user': instance.authUser,
    };

const _$TypeTransactionEnumMap = {
  TypeTransaction.Credit: 'Credit',
  TypeTransaction.Payement: 'Payement',
};
