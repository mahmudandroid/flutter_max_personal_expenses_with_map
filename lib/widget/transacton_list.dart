import 'package:flutter/material.dart';
import 'package:flutter_max_personal_expenses/model/transaction.dart';
import 'package:intl/intl.dart';

class TransactonList extends StatelessWidget {
  final List<Transacton> _userTransacton;

  TransactonList(this._userTransacton);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                padding: EdgeInsets.all(5),
                child: Text(
// '\$'+tx.amount.toString(),
                  '\$${_userTransacton[index].amount.toStringAsFixed(2)}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Theme.of(context).primaryColor),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _userTransacton[index].title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
//DateFormat('yyyy-MM-dd').format(tx.date) ,
// DateFormat().format(tx.date) ,
                    DateFormat.yMMMd().format(_userTransacton[index].date),
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
      },
      itemCount: _userTransacton.length,
    );
  }
}
