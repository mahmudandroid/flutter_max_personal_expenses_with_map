

import 'package:flutter/foundation.dart';

class Transacton {
  final int id;

  final String title;

  final double amount;

  final DateTime date;

  Transacton({
    @required this.id,
    @required this.title,
    @required this.amount,
    @required this.date,
  });
}
