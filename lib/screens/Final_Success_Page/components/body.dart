import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/Registeration_screen/register_screen.dart';

import '../../../components/customButton.dart';
import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            flex: 8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      "assets/images/Success Icon.png",
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(bottom: getProportionalHeight(100)!),
                      child: Text(
                        "Success",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: getProportionalWidth(25)),
                      ),
                    ),
                    SizedBox(
                      height: getProportionalHeight(25),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionalWidth(60)!),
                      child: const Text(
                        "Congratulations your password has been changed",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionalHeight(100),
                ),
              ],
            )),
        Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                    buttonColor: kPrimaryColor,
                    textColor: Colors.white,
                    text: "Sign in",
                    press: () {
                      Navigator.pushReplacementNamed(
                          context, RegisterationScreen.routeName);
                    },
                    SvgSrc: ""),
              ],
            ))
      ],
    );
  }
}
