import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  late final List<Transaction> transactions;
  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      //tx is input parameter >> get tx from transaction
      children: transactions.map((tx) {
        return Card(
          child: Row(children: [
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 15,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.purple,
                  width: 2,
                ),
              ),
              child: Text(
                '\$' + tx.amount.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.purple,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tx.title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  //i can make dateforamt empty and it will be defualt or give to it custom format
                  //there is nothing between Dataformat and () in defualt
                  DateFormat.yMMMMd().format(tx.date),
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            )
          ]),
        );
      }).toList(),
    );
  }
}
