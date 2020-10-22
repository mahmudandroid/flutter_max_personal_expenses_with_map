import 'package:flutter/material.dart';
import 'package:flutter_max_personal_expenses/model/transaction.dart';
import 'package:flutter_max_personal_expenses/widget/transacton_list.dart';
import '../widget/new_transacton.dart';
import '../widget/user_transacton.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        title: txTitle, amount: txAmount, date: DateTime.now(), id: 10);

    setState(() {
      _userTransacton.add(newTx);
    });
  }

  void _addNewTransAction(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return GestureDetector(
            onTap: () {},
            child: NewTransacton(_addNewTrnsaction),
            behavior: HitTestBehavior.opaque,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exp"),
        actions: [
          IconButton(
            icon: Icon(Icons.more),
            onPressed: () => _addNewTransAction(context),
          )
        ],
      ),
      body: Container(
        height: double.infinity,
        child: TransactonList(_userTransacton),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addNewTransAction(context),
        child: Icon(Icons.add),
      ),
    );
  }
}
