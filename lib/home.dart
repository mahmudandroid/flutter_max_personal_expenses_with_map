import 'package:flutter/material.dart';
import './transaction.dart';

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

  @override
  Widget build(BuildContext context) {
    transacton
        .map((e) => {
              Card(
                child: Text(e.title),
              ),
            })
        .toList();
    return Scaffold(
      body: Container(
        child: Column(children: [
//          transacton
//              .map((e) => {
//                    Card(
//                      child: Text(e.title),
//                    ),
//                  })
//              .toList(),
        ]),
      ),
    );
  }
}
