import 'package:flutter/material.dart';

class BuildActionButton extends StatelessWidget {
  const BuildActionButton({super.key, required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(children: [CircleAvatar(backgroundColor: Colors.black12, child: Icon(icon, color: Colors.black87)), const SizedBox(height: 4), Text(label, style: TextStyle(color: Colors.black87))]);
  }
}
