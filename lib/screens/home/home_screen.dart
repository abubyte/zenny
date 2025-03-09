import 'package:flutter/material.dart';

import 'widgets/build_action_button.dart';
import 'widgets/expense_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Abdurrohman Davron'), actions: [IconButton(icon: const Icon(Icons.notifications), onPressed: () {})]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Total balance card
              Card(
                color: Colors.black87,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Total Balance', style: TextStyle(color: Colors.white70, fontSize: 16)),
                      const SizedBox(height: 8),
                      const Text('\$4,250.00', style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      Text('Monthly budget \$5,000.00', style: TextStyle(color: Colors.white70, fontSize: 14)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Quick Actions
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [BuildActionButton(icon: Icons.mic, label: 'Voice'), BuildActionButton(icon: Icons.mic, label: 'Scan'), BuildActionButton(icon: Icons.mic, label: 'Analytics')],
              ),
              const SizedBox(height: 16),

              // Recent Transactions
              Text('Recent Transactions', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ExpenseCard(title: 'Shopping', time: 'Today, 11:00 AM', amount: '-\$250.00'),
              ExpenseCard(title: 'Food', time: 'Yesterday, 02:00 PM', amount: '-\$50.00'),
              ExpenseCard(title: 'Transport', time: 'Yesterday, 10:00 AM', amount: '-\$100.00'),
              SizedBox(height: 16),

              // See all button
              TextButton(onPressed: () {}, child: Text('See all')),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: 'Cards'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Stats'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: 0,
        onTap: (index) {
          // TODO: Handle navigation logic
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
