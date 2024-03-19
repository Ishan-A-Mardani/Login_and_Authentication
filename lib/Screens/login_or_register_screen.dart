import 'package:flutter/material.dart';
import 'package:login_and_authentication/Screens/login_screen.dart';
import 'package:login_and_authentication/Screens/register_screen.dart';

class LoginOrRegisterScreen extends StatefulWidget {
  const LoginOrRegisterScreen({super.key});

  @override
  State<LoginOrRegisterScreen> createState() => _LoginOrRegisterScreenState();
}

class _LoginOrRegisterScreenState extends State<LoginOrRegisterScreen> {
  bool showLoginPage = true;

  void swtichPage() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginScreen(onTap: swtichPage);
    } else {
      return RegisterScreen(onTap: swtichPage);
    }
  }
}
