// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'transaction.freezed.dart';

part 'transaction.g.dart';

// ignore: constant_identifier_names
enum TypeTransaction { Credit, Payement }

@freezed
class TransactionItem with _$TransactionItem {
  const factory TransactionItem({
    @JsonKey(name: 'type', fromJson: types) required TypeTransaction type,
    @JsonKey(name: 'total') required double total,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'pending') required bool pending,
    @JsonKey(name: 'date', fromJson: dateTimeFromJson) required DateTime date,
    @JsonKey(name: 'auth_user') String? authUser,
  }) = _TransactionItem;

  factory TransactionItem.fromJson(Map<String, dynamic> json) =>
      _$TransactionItemFromJson(json);
}

DateTime dateTimeFromJson(String time) {
  return DateTime.tryParse(time) ?? DateFormat("dd.MM.yyyy").parse(time);
}

TypeTransaction types(dynamic type) {
  if(type == "credit"){
    return TypeTransaction.Credit;
  }
  return TypeTransaction.Payement;
}