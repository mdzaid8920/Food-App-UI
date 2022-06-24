import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/welcome_screen/components/body.dart';
import 'package:food_app_ui/utils/size_config.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static String routeName = "welcome_screen";

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
