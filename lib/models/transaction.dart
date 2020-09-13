import 'dart:math';

import 'package:flutter/widgets.dart';

/**
 * Plain Dart Object for Transaction
 */
class Transaction {
  String id;
  String title;
  double amount;
  DateTime txTime;

  Transaction(
      {@required this.title, @required this.amount, @required this.txTime}) {
    this.id = DateTime.now().toIso8601String();
  }
}
