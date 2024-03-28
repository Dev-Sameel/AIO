import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:razorpay/firebase_api.dart';
import 'package:razorpay/firebase_options.dart';
import 'package:razorpay/home.dart';
import 'package:razorpay/notification_screen.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseApi().initNotification();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
      routes: {NotificationScreen.route:(context)=>const NotificationScreen(),}
    );
  }
}
