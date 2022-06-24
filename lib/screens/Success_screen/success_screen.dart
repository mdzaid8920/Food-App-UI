import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/Success_screen/components/body.dart';


class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);
static String routeName = "success_screen";
  @override
  Widget build(BuildContext context) {
   return Scaffold(body: Body(),); 
  }
}