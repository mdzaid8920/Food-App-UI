import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/Resturant_Detail_Screen/components/body.dart';
import 'package:food_app_ui/utils/constants.dart';
import 'package:food_app_ui/utils/size_config.dart';

class ResturantDetailScreen extends StatelessWidget {
  ResturantDetailScreen({Key? key}) : super(key: key);
  static String routeName = "/resturant_detail_screen";
  @override
  Widget build(BuildContext context) {
    final Map<String,String> data = ModalRoute.of(context)?.settings.arguments as Map<String,String>;
    print(data);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(62),
        child: AppBar(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            "Detail Resturant",
            style: TextStyle(
              color: Colors.white,
              fontSize: getProportionalWidth(18),
            ),
          ),
          elevation: 0,
          backgroundColor: kPrimaryColor,
          centerTitle: true,
        ),
      ),
      body: Body(data: data),
    );
  }
}
