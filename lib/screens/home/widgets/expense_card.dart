import 'package:flutter/material.dart';

class ExpenseCard extends StatelessWidget {
  const ExpenseCard({super.key, required this.title, required this.time, required this.amount});

  final String title;
  final String time;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.shopping_cart, color: Colors.grey),
        title: Text(title),
        subtitle: Text(time, style: TextStyle(color: Colors.black54)),
        trailing: Text(amount, style: TextStyle(color: Colors.red)),
      ),
    );
  }
}
