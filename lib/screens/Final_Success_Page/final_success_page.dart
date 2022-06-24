import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/Final_Success_Page/components/body.dart';

class FinalSuccessPage extends StatelessWidget {
  const FinalSuccessPage({Key? key}) : super(key: key);
  static String routeName = "final_success_page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
