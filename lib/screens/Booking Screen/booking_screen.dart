import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/Booking%20Screen/components/body.dart';
import 'package:food_app_ui/utils/constants.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Body(),
    );
  }
}
