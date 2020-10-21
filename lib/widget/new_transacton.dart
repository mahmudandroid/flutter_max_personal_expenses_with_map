import 'package:flutter/material.dart';

class NewTransacton extends StatelessWidget {

  final Function _addNewTransAction ;
  NewTransacton(this._addNewTransAction);



  String titleInput ;
  String amountInput ;
  @override
  Widget build(BuildContext context) {
    return Card(
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
                  _addNewTransAction(titleInput ,double.parse(amountInput));

                },
                child: Text("Add Transaction"))
          ],
        ),
      ),
    );
  }
}
