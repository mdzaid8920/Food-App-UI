import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/ForgetPasswordScreen/components/body.dart';


class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);
static String routeName = "forget_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Body(),); 
  }
}