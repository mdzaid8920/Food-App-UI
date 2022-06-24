import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import '../../../components/customButton.dart';
import '../../../components/custom_form_field.dart';
import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    Key? key, required this.nameController, required this.emailController, required this.passwordController,
  }) : super(key: key);

  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFormField(
            formText: "Full Name",
            hinText: "Enter your full name",
            keyboardType: TextInputType.name,
            obsecure: false,
            controller: nameController,
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
            height: getProportionalHeight(50),
          ),
          CustomButton(
            buttonColor: kPrimaryColor,
            textColor: Colors.white,
            text: "Registeration",
            SvgSrc: "",
            press: () {},
          ),
          SizedBox(
            height: getProportionalHeight(50),
          ),
          CustomButton(
              buttonColor: kSecondaryColor,
              textColor: kTextColor1,
              text: "Sign Up with Google",
              press: () {},
              SvgSrc: "assets/icons/google-icon.svg"),
        ],
      ),
    );
  }
}
