import 'package:flutter/material.dart';
import 'package:flutter_max_personal_expenses/model/transaction.dart';
import 'package:intl/intl.dart';

class TransactonList extends StatelessWidget {
  final List<Transacton> _userTransacton;

  TransactonList(this._userTransacton);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _userTransacton.map((tx) {
        return Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.purple,
                  ),
                ),
                padding: EdgeInsets.all(5),
                child: Text(
// '\$'+tx.amount.toString(),
                  '\$${tx.amount}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.purple),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tx.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
//DateFormat('yyyy-MM-dd').format(tx.date) ,
// DateFormat().format(tx.date) ,
                    DateFormat.yMMMd().format(tx.date),
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Icon(Icons.delete),
            ],
          ),
        );
      }).toList(),
    );
  }
}
