import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/Final_Success_Page/final_success_page.dart';

import '../../../components/customButton.dart';
import '../../../components/custom_form_field.dart';
import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';
import '../../Success_screen/success_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(getProportionalHeight(25)!),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: getProportionalHeight(200),
                    ),
                    Text(
                      "Change New Password",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: getProportionalHeight(45),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: getProportionalHeight(20),
                    ),
                    Text(
                      "Enter a different password with the previous",
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: getProportionalHeight(60),
                    ),
                    CustomFormField(
                        formText: "New Password",
                        hinText: "********",
                        obsecure: true,
                        keyboardType: TextInputType.text,
                        controller: _passwordController),
                    CustomFormField(
                        formText: "Confirm Password",
                        hinText: "********",
                        obsecure: true,
                        keyboardType: TextInputType.text,
                        controller: _confirmPasswordController),
                    SizedBox(
                      height: getProportionalHeight(25),
                    ),
                  ],
                ),
              ),
            )),
        Expanded(
            flex: 3,
            child: Container(
              margin:
                  EdgeInsets.symmetric(vertical: getProportionalHeight(130)!),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(
                    buttonColor: kPrimaryColor,
                    text: "Reset Password",
                    SvgSrc: "",
                    textColor: Colors.white,
                    press: () {
                      Navigator.pushReplacementNamed(
                          context, FinalSuccessPage.routeName);
                    },
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
