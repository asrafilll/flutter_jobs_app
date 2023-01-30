import 'package:flutter/material.dart';

class BMIApp extends StatelessWidget {
  const BMIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Your Height (cm) :',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            Slider(
              min: 1,
              max: 100,
              value: 40,
              onChanged: (newValue) {
                print('Your Weight $newValue');
              },
            ),
            const SizedBox(height: 40),
            const Text(
              'Your Weight (kg) :',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            Slider(
              activeColor: Colors.pink,
              inactiveColor: Colors.pink.withOpacity(0.2),
              min: 1,
              max: 100,
              value: 40,
              onChanged: (newValue) {
                print('Your Height $newValue');
              },
            ),
            const SizedBox(height: 40),
            const Text(
              'Your BMI is :',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              '50.00',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
