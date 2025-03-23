import 'category_model.dart';

enum TransactionType { expense, income }

class Transaction {
  final String? id;
  final String title;
  final double amount;
  final TransactionType type;
  final Category category;
  final DateTime date;

  Transaction({
    this.id,
    required this.title,
    required this.amount,
    required this.type,
    required this.category,
    required this.date,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'amount': amount,
    'type': type.toString().split('.').last,
    'category': category.id,
    'date': date.toIso8601String(),
  };

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      id: json['id'] as String?,
      title: json['title'] as String,
      amount: json['amount'] as double,
      type: TransactionType.values.firstWhere(
        (e) => e.toString().split('.').last == json['type'],
      ),
      category: Category.fromJson(json['category']),
      date: DateTime.parse(json['date'] as String),
    );
  }
}
