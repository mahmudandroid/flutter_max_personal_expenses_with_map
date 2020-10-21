import 'package:flutter/material.dart';
import 'package:flutter_max_personal_expenses/model/transaction.dart';
import 'package:flutter_max_personal_expenses/widget/new_transacton.dart';
import 'package:flutter_max_personal_expenses/widget/transacton_list.dart';

class UserTransacton extends StatefulWidget {
  @override
  _UserTransactonState createState() => _UserTransactonState();
}

class _UserTransactonState extends State<UserTransacton> {
  final List<Transacton> _userTransacton = [
    Transacton(id: 1, title: 'DevTools ', amount: 3.7, date: DateTime.now()),
    Transacton(
        id: 2, title: 'Android Studio', amount: 23.7, date: DateTime.now()),
    Transacton(
        id: 3, title: 'Dart DevTools', amount: 33.7, date: DateTime.now()),
    Transacton(
        id: 4, title: 'Visual Studio Code', amount: 13.7, date: DateTime.now()),
  ];

  void _addNewTrnsaction(String txTitle, double txAmount) {
    final newTx = Transacton(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: 10
    );

    setState(() {
      _userTransacton.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransacton(_addNewTrnsaction),
        TransactonList(_userTransacton),
      ],
    );
  }
}
