import 'package:flutter/material.dart';

import 'widgets/home_app_bar.dart';
import 'widgets/balance_card.dart';
import 'widgets/expense_card.dart';
import 'widgets/action_buttons_bar.dart';
import '../../widgets/labels/section_label.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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

                  ListView.builder(
                    itemBuilder: (_, __) => ExpenseCard.placeholder(),
                    itemCount: 3,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                  ),
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
