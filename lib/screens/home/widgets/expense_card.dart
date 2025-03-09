import 'package:flutter/material.dart';

class ExpenseCard extends StatelessWidget {
  const ExpenseCard({
    super.key,
    required this.title,
    required this.time,
    required this.amount,
  });

  final String title;
  final String time;
  final double amount;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding: EdgeInsets.all(12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        tileColor: Colors.white,
        leading: Container(
          width: 40,
          height: 100,
          decoration: BoxDecoration(
            color: Color(0xFFF3F4F6),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Icon(Icons.shopping_cart, color: Color(0xFF364456), size: 16,),
        ),
        title: Text(title),
        subtitle: Text(time, style: TextStyle(color: Colors.black54)),
        trailing: Text(
          "-\$$amount",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}
