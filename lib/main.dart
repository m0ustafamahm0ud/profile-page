import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:profile/core/utils/app_constance.dart';
import 'package:profile/profile_page/presentation/pages/profile_page.dart';

import 'core/utils/services.dart';
import 'firebase_options.dart';

void main() async {
  ServiceLocator().init();

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        primaryColor: AppConstance.blueColor,
      ),
      home: const ProfilePage(),
    );
  }
}
