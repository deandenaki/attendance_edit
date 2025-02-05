import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyCKJ1ghZHfx0ONktQrD1On48jQfUoadI9E', //current_key
          appId: "1:946521984036:android:8b82a1c32e3ca4041fdcb1", //mobilesdk_app_id
          messagingSenderId: '946521984036',//project_number
          projectId: 'attendance-edit-c9383' //project_id
      )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          cardTheme: CardTheme(
            surfaceTintColor: Colors.white,
          ),
          dialogTheme: DialogTheme(
            surfaceTintColor: Colors.white, backgroundColor: Colors.white,
          ),
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.blueAccent
          ),
          useMaterial3: true
      ),
      home: HomeScreen(),
    );
  }
}


