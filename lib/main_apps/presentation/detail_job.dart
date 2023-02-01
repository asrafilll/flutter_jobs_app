import 'package:flutter/material.dart';
import 'package:jobs_app/main_apps/app_styles.dart';
import 'package:jobs_app/main_apps/presentation/components/primary_button.dart';
import 'package:jobs_app/main_apps/presentation/components/text_button.dart';

class DetailJobPage extends StatefulWidget {
  const DetailJobPage({super.key});

  @override
  State<DetailJobPage> createState() => _DetailJobPageState();
}

class _DetailJobPageState extends State<DetailJobPage> {
  bool _isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 40,
          ),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _isClicked
                          ? Container(
                              margin: const EdgeInsets.only(bottom: 16),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                  color: const Color(0XFFECEDF1),
                                  borderRadius: BorderRadius.circular(100)),
                              child: const Text(
                                'You have applied this job and the\nrecruiter will contact you',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0XFFA2A6B4),
                                ),
                              ),
                            )
                          : const SizedBox(),
                      Image.asset('assets/google_icon.png'),
                      const SizedBox(height: 20),
                      const Text(
                        'Front-End Developer',
                        style: TextStyle(
                          color: AppStyles.kBlackColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const Text(
                        'Google, Inc • Jakarta',
                        style: TextStyle(
                          color: AppStyles.kGreyColor,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'About The Job',
                      style: TextStyle(
                        color: AppStyles.kBlackColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Image.asset('assets/icons/dot.png'),
                        const SizedBox(width: 8),
                        const Text(
                          'Full-Time On Site',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Image.asset('assets/icons/dot.png'),
                        const SizedBox(width: 8),
                        const Text(
                          'Start at \$18,000 per month',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Qualifications',
                      style: TextStyle(
                        color: AppStyles.kBlackColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Image.asset('assets/icons/dot.png'),
                        const SizedBox(width: 8),
                        const Flexible(
                          child: Text(
                            'Candidate must possess at least a Bachelor\'s Degree.',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Image.asset('assets/icons/dot.png'),
                        const SizedBox(width: 8),
                        const Flexible(
                          child: Text(
                            'Able to use Microsoft Office and Google based service.',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Image.asset('assets/icons/dot.png'),
                        const SizedBox(width: 8),
                        const Flexible(
                          child: Text(
                            'Have an excellent time management, good at organized and details',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Responsibilities',
                      style: TextStyle(
                        color: AppStyles.kBlackColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Image.asset('assets/icons/dot.png'),
                        const SizedBox(width: 8),
                        const Flexible(
                          child: Text(
                            'Initiate and promote any programs, events, training, or activities.',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Image.asset('assets/icons/dot.png'),
                        const SizedBox(width: 8),
                        const Flexible(
                          child: Text(
                            'Assessing and anticipating needs and collaborate with Division.',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 50),
                    Center(
                      child: Column(
                        children: [
                          PrimaryButton(
                            bgColor: _isClicked
                                ? Colors.red
                                : AppStyles.kPrimaryColor,
                            width: 200,
                            title:
                                _isClicked ? 'Cancel Apply' : 'Apply for Job',
                            onPressed: () {
                              setState(() {
                                print(_isClicked);
                                _isClicked = !_isClicked;
                              });
                            },
                          ),
                          CustomTextButton(
                            width: 200,
                            title: 'Message Recruiter',
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
