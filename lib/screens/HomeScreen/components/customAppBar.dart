import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app_ui/screens/HomeScreen/components/body.dart';

import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final Body widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionalHeight(250),
      // color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              widget.testKey?.currentState?.openDrawer();
            },
            child: Padding(
              padding: EdgeInsets.only(
                  top: getProportionalHeight(50)!,
                  left: getProportionalWidth(15)!),
              child: SvgPicture.asset(
                "assets/icons/Menu.svg",
                color: kTextColor1,
                width: getProportionalWidth(22),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: getProportionalHeight(50)!),
            child: Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: kPrimaryColor,
                ),
                Text("Saddar Cantt,Lahore")
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: getProportionalHeight(50)!,
            ),
            child: Container(
              width: getProportionalWidth(80),
              height: getProportionalHeight(80),
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/profile.jpg"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
