import 'package:flutter/material.dart';

class VoiceCommandScreen extends StatelessWidget {
  const VoiceCommandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Voice Command'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Say something like'),
            SizedBox(height: 16),
            Text('"Transfer \$50 to John"'),
            Text('"Show my expenses for last month"'),
            Text('"What\'s my balance?"'),
            SizedBox(height: 32),
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.black87,
              child: Icon(Icons.mic, color: Colors.white, size: 40),
            ),
            SizedBox(height: 8),
            Text('Tap to speak', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
