import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/Registeration_screen/components/body.dart';

class RegisterationScreen extends StatelessWidget {
  const RegisterationScreen({Key? key}) : super(key: key);
  static String routeName = "/register_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Body(),
    );
  }
}
