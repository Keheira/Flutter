import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/login_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/chat_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: 'welcome', routes: {
      'welcome': (context) => WelcomeScreen(),
      'login': (context) => LoginScreen(),
      'registration': (context) => RegistrationScreen(),
      'chat': (context) => ChatScreen(),
    });
  }
}
