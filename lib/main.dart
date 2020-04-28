import 'package:flutter/material.dart';
import 'package:unirecapp/screens/data_policy_screen.dart';
import 'package:unirecapp/screens/login_screen.dart';
import 'package:unirecapp/screens/register_screen.dart';
import 'constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        backgroundColor: kBackgroundColour,
        primaryColor: kPrimaryColour,
        secondaryHeaderColor: kSecondaryColour,
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        RegisterScreen.id: (context) => RegisterScreen(),
        DataPolicyScreen.id: (context) => DataPolicyScreen(),
      },
    );
  }
}
