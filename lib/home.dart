import 'package:flutter/material.dart';
import 'package:flutter_max_personal_expenses/widget/transacton_list.dart';
import 'package:flutter_max_personal_expenses/model/transaction.dart';
import 'package:intl/intl.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Transacton> transacton = [
    Transacton(id: 1, title: 'DevTools ', amount: 3.7, date: DateTime.now()),
    Transacton(
        id: 2, title: 'Android Studio', amount: 23.7, date: DateTime.now()),
    Transacton(
        id: 3, title: 'Dart DevTools', amount: 33.7, date: DateTime.now()),
    Transacton(
        id: 4, title: 'Visual Studio Code', amount: 13.7, date: DateTime.now()),
  ];
String titleInput ;
String amountInput ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Text("Chart"),
          ),
          Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    onChanged: (value) =>titleInput  = value,
                    decoration: InputDecoration(labelText: "title"),
                  ),
                  TextField(
                    onChanged: (value) => amountInput = value ,
                    decoration: InputDecoration(labelText: "title"),
                  ),
                  FlatButton(
                      color: Colors.grey[100],
                      onPressed: () {
                        print(titleInput);
                        print(amountInput);
                      },
                      child: Text("Add Transaction"))
                ],
              ),
            ),
          ),
          Column(
            children: transacton.map((tx) {
              return TransactonList(tx);
            }).toList(),
          ),
        ],
      ),
    );
  }
}
