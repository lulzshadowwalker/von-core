import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet.freezed.dart';

@freezed
class Wallet with _$Wallet {
  const factory Wallet({
    required String id,
    required String balance,
    required String email,
    required String avatar,
  }) = _Wallet;
}

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    required String id,
    required String uuid,
    required String amount,
    required TransactionType type,
    required bool isConfirmed,
    required DateTime createdAt,
    String? title,
    String? description,
  }) = _Transaction;
}

enum TransactionType {
  deposit('DEPOSIT'),
  withdraw('WITHDRAW');

  const TransactionType(this.value);
  final String value;

  factory TransactionType.fromValue(String value) {
    return values.firstWhere(
      (e) => e.value == value,
      orElse: () => throw Exception('Invalid transaction type: $value'),
    );
  }
}
