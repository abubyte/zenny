import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';

import 'widgets/expense_card.dart';
import 'widgets/build_action_button.dart';
import '../voice_command/voice_command_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // App Bar
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                  right: 16,
                  bottom: 16,
                  left: 16,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Color(0xFF1F2937),
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Welcome back!'),
                        Text(
                          'Abdurrohman Davron',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.notifications_outlined),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    color: Color(0xFF1F2937),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Balance',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '\$4,250.00',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          LinearProgressIndicator(
                            value: 4250 / 5000,
                            minHeight: 10,
                            color: Colors.white,
                            backgroundColor: Colors.white24,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Monthly budget \$5,000.00',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BuildActionButton(
                        icon: Feather.mic,
                        label: 'Voice',
                        screen: VoiceCommandScreen(),
                      ),
                      SizedBox(width: 16),

                      BuildActionButton(icon: Feather.camera, label: 'Scan'),
                      SizedBox(width: 16),

                      BuildActionButton(
                        icon: Feather.pie_chart,
                        label: 'Analytics',
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recent Transactions',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(onPressed: () {}, child: Text('See all')),
                    ],
                  ),
                  SizedBox(height: 8),
                  ExpenseCard(
                    title: "Restaurant",
                    time: 'Today, 2:30 PM',
                    amount: 24.50,
                  ),
                  ExpenseCard(title: "Fuel", time: 'Yesterday', amount: 18),
                  ExpenseCard(
                    title: "Grocery",
                    time: 'Jan 10, 2025',
                    amount: 45,
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: 'Cards',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Stats'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: 0,
        onTap: (index) {},
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
