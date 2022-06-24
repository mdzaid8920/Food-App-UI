import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/Profile_Screen/components/body.dart';
import 'package:food_app_ui/utils/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static String routeName = "/profile_scrren";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Body(),
    );
  }
}
