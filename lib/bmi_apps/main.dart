import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jobs_app/bmi_apps/height_provider.dart';
import 'package:jobs_app/bmi_apps/weight_provider.dart';
import 'package:provider/provider.dart';

class BMIApp extends StatelessWidget {
  const BMIApp({super.key});

  @override
  Widget build(BuildContext context) {
    var weightProvider = Provider.of<WeightProvider>(context);
    var heightProvider = Provider.of<HeightProvider>(context);
    return Scaffold(
      body: Column(
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
            max: 200,
            divisions: 200,
            value: heightProvider.height,
            label: heightProvider.height.round().toString(),
            onChanged: (newValue) {
              heightProvider.height = newValue;
            },
          ),

          // NOTE : MENGGUNAKAN CONSUMER WIDGET

          // Consumer<HeightProvider>(
          //   builder: (context, heightProvider, _) => Slider(
          //     min: 1,
          //     max: 200,
          //     divisions: 200,
          //     value: heightProvider.height,
          //     label: heightProvider.height.round().toString(),
          //     onChanged: (newValue) {
          //       heightProvider.height = newValue;
          //     },
          //   ),
          // ),
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
            divisions: 100,
            value: weightProvider.weight,
            label: weightProvider.weight.round().toString(),
            onChanged: (newValue) {
              weightProvider.weight = newValue;
            },
          ),
          // NOTE :  MENGGUNAKAN CONSUMER WIDGET
          // Consumer<WeightProvider>(
          //   builder: (context, weightProvider, _) => Slider(
          //     activeColor: Colors.pink,
          //     inactiveColor: Colors.pink.withOpacity(0.2),
          //     min: 1,
          //     max: 100,
          //     divisions: 100,
          //     value: weightProvider.weight,
          //     label: weightProvider.weight.round().toString(),
          //     onChanged: (newValue) {
          //       weightProvider.weight = newValue;
          //     },
          //   ),
          // ),
          const SizedBox(height: 40),
          const Text(
            'Your BMI is :',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            (weightProvider.weight / pow(heightProvider.height / 100, 2))
                .toStringAsFixed(2),
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),

          // NOTE : MENGGUNAKAN CONSUMER WIDGET

          // Consumer<WeightProvider>(
          //   builder: (context, weightProvider, child) =>
          //       Consumer<HeightProvider>(
          //     builder: (context, heightProvider, child) => Text(
          //       (weightProvider.weight / pow(heightProvider.height / 100, 2))
          //           .toStringAsFixed(2),
          //       style: const TextStyle(
          //         fontSize: 24,
          //         fontWeight: FontWeight.w600,
          //       ),
          //     ),
          //   ),
        ],
      ),
    );
  }
}
