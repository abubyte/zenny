import 'package:expense_tracker/models/transaction_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key, required this.transactions});

  final List<Transaction> transactions;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...transactions.map(
          (expense) => Card(
            child: ListTile(
              contentPadding: EdgeInsets.all(12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              tileColor: Colors.white,
              leading: Container(
                width: 40,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xFFF3F4F6),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(
                  expense.category.icon,
                  color: Color(0xFF364456),
                  size: 16,
                ),
              ),
              title: Text(expense.title),
              subtitle: Text(_formatDate(expense.date)),
              trailing:
                  expense.type == TransactionType.expense
                      ? Text(
                        '-\$${expense.amount.toStringAsFixed(2)}',
                        style: const TextStyle(color: Colors.red),
                      )
                      : Text(
                        '+\$${expense.amount.toStringAsFixed(2)}',
                        style: const TextStyle(color: Colors.green),
                      ),
            ),
          ),
        ),
        const SizedBox(height: 16),

        Center(
          child: TextButton(onPressed: () {}, child: const Text('See all')),
        ),
      ],
    );
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    if (date.day == now.day &&
        date.month == now.month &&
        date.year == now.year) {
      return 'Today, ${DateFormat('h:mm a').format(date)}';
    } else if (date.day == now.day - 1 &&
        date.month == now.month &&
        date.year == now.year) {
      return 'Yesterday, ${DateFormat('h:mm a').format(date)}';
    } else {
      return DateFormat('MMM d, yyyy').format(date);
    }
  }
}
