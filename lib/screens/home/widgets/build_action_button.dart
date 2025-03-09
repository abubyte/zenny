import 'package:flutter/material.dart';

class BuildActionButton extends StatelessWidget {
  const BuildActionButton({
    super.key,
    required this.icon,
    required this.label,
    this.screen,
  });

  final IconData icon;
  final String label;
  final Widget? screen;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap:
            screen != null
                ? () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => screen!),
                )
                : null,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          width: double.infinity,
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Color(0xFF4B5563)),
              const SizedBox(height: 4),
              Text(label, style: TextStyle(color: Colors.black87)),
            ],
          ),
        ),
      ),
    );
  }
}
