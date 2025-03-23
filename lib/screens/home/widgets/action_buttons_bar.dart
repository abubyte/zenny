import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';

import '../../voice_command/voice_command_screen.dart';
import 'action_button.dart';

class ActionButtonsBar extends StatelessWidget {
  const ActionButtonsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ActionButton(
          icon: Feather.mic,
          label: 'Voice',
          screen: VoiceCommandScreen(),
        ),
        SizedBox(width: 16),

        ActionButton(icon: Feather.camera, label: 'Scan'),
        SizedBox(width: 16),

        ActionButton(icon: Feather.pie_chart, label: 'Analytics'),
      ],
    );
  }
}
