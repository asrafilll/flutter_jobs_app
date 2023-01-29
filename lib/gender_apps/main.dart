import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'gender_provider.dart';

class GenderApp extends StatelessWidget {
  const GenderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<GenderProvider>(
              builder: (context, genderProvider, _) => Text(
                'Your Gender',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: genderProvider.color,
                ),
              ),
            ),
            const SizedBox(height: 42),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Consumer<GenderProvider>(
                builder: (context, genderProvider, child) => Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          genderProvider.isMale = true;
                        },
                        child: Container(
                          padding: const EdgeInsets.all(
                            20,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: genderProvider.maleColor,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Icon(
                                Icons.male,
                                size: 100,
                                color: genderProvider.maleColor,
                              ),
                              const SizedBox(height: 16),
                              Text(
                                'Male',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: genderProvider.maleColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          genderProvider.isMale = false;
                        },
                        child: Container(
                          padding: const EdgeInsets.all(
                            20,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: genderProvider.femaleColor,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Icon(
                                Icons.female,
                                size: 100,
                                color: genderProvider.femaleColor,
                              ),
                              const SizedBox(height: 16),
                              Text(
                                'Female',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: genderProvider.femaleColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
