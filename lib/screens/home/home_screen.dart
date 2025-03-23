import 'package:flutter/material.dart';

import '../../models/category_model.dart';
import '../../models/transaction_model.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/balance_card.dart';
import 'widgets/transaction_list.dart';
import 'widgets/action_buttons_bar.dart';
import '../../widgets/labels/section_label.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Transaction> transactions = [
    Transaction(
      title: 'Groceries',
      amount: 100.0,
      type: TransactionType.expense,
      category: Category(id: '1', name: 'Groceries', iconCode: 'e88a'),
      date: DateTime.now(),
    ),
    Transaction(
      title: 'Salary',
      amount: 1000.0,
      type: TransactionType.income,
      category: Category(id: '2', name: 'Salary', iconCode: 'e88a'),
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Total Balance Card
                  BalanceCard(),
                  SizedBox(height: 16),

                  // Quick Action Buttons
                  ActionButtonsBar(),
                  SizedBox(height: 16),

                  // Recent Transactions
                  SectionLabel('Recent Transactions', actionLabel: 'See all'),
                  SizedBox(height: 8),

                  TransactionList(transactions: transactions),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
