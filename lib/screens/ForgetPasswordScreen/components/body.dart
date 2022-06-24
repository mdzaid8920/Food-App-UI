import 'package:flutter/material.dart';
import 'package:food_app_ui/components/customButton.dart';
import 'package:food_app_ui/components/custom_form_field.dart';
import 'package:food_app_ui/screens/Success_screen/success_screen.dart';
import 'package:food_app_ui/utils/constants.dart';
import 'package:food_app_ui/utils/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final TextEditingController _emailController = TextEditingController();

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
                      "Forget Password",
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
                      "Enter your registered email below",
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: getProportionalHeight(60),
                    ),
                    CustomFormField(
                        formText: "Email address",
                        hinText: "example@gmail.com",
                        obsecure: false,
                        keyboardType: TextInputType.emailAddress,
                        controller: _emailController),
                    SizedBox(
                      height: getProportionalHeight(25),
                    ),
                    Row(
                      children: [
                        Text("Remember the password? "),
                        GestureDetector(
                          onTap: () {
                            print("Sign in Button Clicked!!");
                          },
                          child: Text(
                            "Sign in",
                            style: TextStyle(color: kPrimaryColor),
                          ),
                        ),
                      ],
                    )
                    // RichText(
                    //   textAlign: TextAlign.start,
                    //   text: TextSpan(text: "Remember the password",children: [
                    //     TextSpan(text: "Sign in")
                    //   ])
                    //   ,
                    // ),
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
                    text: "Submit",
                    SvgSrc: "",
                    textColor: Colors.white,
                    press: () {
                      Navigator.pushReplacementNamed(context, SuccessScreen.routeName);
                    },
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
