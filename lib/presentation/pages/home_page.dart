import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:infinite_horizons/presentation/atoms/atoms.dart';

class HomePage extends StatelessWidget {
  final CountDownController controller = CountDownController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: TimerAtom(controller),
          ),
          ButtonAtom(
            variant: ButtonVariant.primary,
            onPressed: () => controller.start(),
          ),
        ],
      ),
    );
  }
}
