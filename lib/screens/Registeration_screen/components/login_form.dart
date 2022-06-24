import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/ForgetPasswordScreen/forget_password_screen.dart';
import 'package:food_app_ui/screens/HomeScreen/home_screen.dart';

import '../../../components/customButton.dart';
import '../../../components/custom_form_field.dart';
import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';
import '../../Navigation/CustomNavigation.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
    required this.emailController,
    required this.passwordController,
  }) : super(key: key);
  final TextEditingController emailController;
  final TextEditingController passwordController;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: getProportionalHeight(25),
          ),
          CustomFormField(
            formText: "Email address",
            hinText: "example@gmail.com",
            keyboardType: TextInputType.emailAddress,
            obsecure: false,
            controller: emailController,
          ),
          CustomFormField(
            formText: "Password",
            hinText: "********",
            keyboardType: TextInputType.text,
            obsecure: false,
            controller: passwordController,
          ),
          SizedBox(
            height: getProportionalHeight(15),
          ),
          GestureDetector(
            onTap: () {
              print("Forget Button Clicked!!!");
              Navigator.pushReplacementNamed(context, ForgetPassword.routeName);
            },
            child: const Text(
              "Forget Passowrd?",
              style: TextStyle(color: kPrimaryColor),
            ),
          ),
          SizedBox(
            height: getProportionalHeight(50),
          ),
          CustomButton(
            buttonColor: kPrimaryColor,
            textColor: Colors.white,
            text: "Login",
            SvgSrc: "",
            press: () {
              // Navigator.pushReplacementNamed(context, HomeScreen.routeName);
              Navigator.pushReplacementNamed(context, CustomNavigationBarItem.routeName);
            },
          ),
          SizedBox(
            height: getProportionalHeight(50),
          ),
          CustomButton(
              buttonColor: kSecondaryColor,
              textColor: kTextColor1,
              text: "Login with Google",
              press: () {},
              SvgSrc: "assets/icons/google-icon.svg"),
        ],
      ),
    );
  }
}
