import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  late final Function addTx;
  late String titleInput;
  late String amountInput;
  final tittleController = TextEditingController();
  final amountController = TextEditingController();
  NewTransaction(this.addTx);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Title',
            ),
            controller: tittleController,
            onChanged: (value) {
              titleInput = value;
            },
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Amount',
            ),
            controller: amountController,
            onChanged: (val) {
              amountInput = val;
            },
          ),
          MaterialButton(
            onPressed: () {
              addTx(tittleController.text, double.parse(amountController.text));
            },
            child: Text('Add Transaction'),
            textColor: Colors.purple,
          ),
        ]),
      ),
    );
  }
}
