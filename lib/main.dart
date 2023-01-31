import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobs_app/main_apps/controller/upload_photo_provider.dart';
// import 'package:jobs_app/bmi_apps/height_provider.dart';
// import 'package:jobs_app/bmi_apps/main.dart';
import 'package:jobs_app/main_apps/presentation/get_started_page.dart';
import 'package:jobs_app/main_apps/presentation/register_page.dart';
import 'package:jobs_app/main_apps/presentation/sign_in.dart';
import 'package:jobs_app/main_apps/presentation/splash_screen.dart';
import 'package:provider/provider.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UploadPhotoProvider>(
          create: (context) => UploadPhotoProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        routes: {
          '/': (context) => const SplashScreen(),
          '/get-started': (context) => const GetStartedPage(),
          '/sign-in': (context) => const SignInPage(),
          '/register': (context) => const RegisterPage(),
        },
      ),
    );
  }
}
