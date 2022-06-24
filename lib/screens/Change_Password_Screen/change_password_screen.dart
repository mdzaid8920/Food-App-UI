import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/Change_Password_Screen/components/body.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  static String routeName = "change_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
