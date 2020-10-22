import 'package:flutter/material.dart';

class NewTransacton extends StatefulWidget {
  final Function _addNewTransAction;

  NewTransacton(this._addNewTransAction);

  @override
  _NewTransactonState createState() => _NewTransactonState();
}

class _NewTransactonState extends State<NewTransacton> {
  String titleInput;

  String amountInput;

  void _submitData() {
    print(titleInput);
    print(amountInput);


    if (titleInput.isEmpty && amountInput.isEmpty) {
      return;
    }

    widget._addNewTransAction(titleInput, double.parse(amountInput));

    Navigator.pop(context);
    // or Navigator.of(context).pop();
  }

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
              onChanged: (value) => titleInput = value,
              decoration: InputDecoration(labelText: "title"),
              onSubmitted: (_) => _submitData(),
            ),
            TextField(
              onChanged: (value) => amountInput = value,
              decoration: InputDecoration(labelText: "title"),
              keyboardType: TextInputType.number,
              onSubmitted: (value)=> _submitData(),
            ),
            FlatButton(
                color: Colors.grey[100],
                onPressed: _submitData,
                child: Text("Add Transaction"))
          ],
        ),
      ),
    );
  }
}
