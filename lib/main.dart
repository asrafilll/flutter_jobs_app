import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:jobs_app/bmi_apps/height_provider.dart';
// import 'package:jobs_app/bmi_apps/main.dart';
import 'package:jobs_app/main_apps/sign_in_page.dart';
import 'package:jobs_app/main_apps/splash_screen.dart';
// import 'package:jobs_app/bmi_apps/weight_provider.dart';
// import 'package:jobs_app/gender_apps/gender_provider.dart';
// import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      routes: {
        '/': (context) => const SplashScreen(),
        '/sign-in': (context) => const SignInPage(),
      },
    );
  }
}
