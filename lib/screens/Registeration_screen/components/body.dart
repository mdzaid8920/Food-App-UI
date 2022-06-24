import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/Registeration_screen/components/login_form.dart';
import 'package:food_app_ui/screens/Registeration_screen/components/sign_up_form.dart';
import 'package:food_app_ui/utils/constants.dart';
import 'package:food_app_ui/utils/size_config.dart';

import '../../../components/customButton.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final ValueNotifier<bool> _SignUpNotifier = ValueNotifier(false);
 final  ValueNotifier<bool> _LoginNotifier = ValueNotifier(false);

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _SignUpNotifier.dispose();
    _LoginNotifier.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset("assets/images/Order Success.png"),
              SizedBox(
                height: getProportionalHeight(25),
              ),
              Expanded(
                child: Container(
                    // width: double.infinity,
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionalWidth(28)!),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Text(
                            "Welcome",
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: getProportionalWidth(25)),
                          ),
                          const Text(
                            "Before Enjoying Foodmedia Services Please Register First",
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    )),
              ),
              Spacer()
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  text: "Create Account",
                  buttonColor: kPrimaryColor,
                  textColor: Colors.white,
                  SvgSrc: "",
                  press: () {
                    // signUp = true;

                    _SignUpNotifier.value = true;
                    _LoginNotifier.value = false;

                    bottomSheet(context);
                  },
                ),
                SizedBox(
                  height: getProportionalHeight(25),
                ),
                CustomButton(
                    buttonColor: kPrimaryLightColor,
                    textColor: kPrimaryColor,
                    text: "Login",
                    SvgSrc: "",
                    press: () {
                      _SignUpNotifier.value = false;
                      _LoginNotifier.value = true;

                      bottomSheet(context);
                    }),
                SizedBox(
                  height: getProportionalHeight(20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: const [
                        Text(
                          "By Logging In Or Registering, You Have Agreed To The",
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                        Text(
                          "Terms And Conditions And Privacy Policy.",
                          style: TextStyle(color: kPrimaryColor, fontSize: 12),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Future<dynamic> bottomSheet(BuildContext context) {
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.all(getProportionalHeight(25)!),
            height: MediaQuery.of(context).size.height -
                getProportionalHeight(500)!,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionalWidth(10)!),
                    margin: EdgeInsets.all(getProportionalHeight(15)!),
                    height: getProportionalHeight(80),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                            onTap: () {
                              // setState(() {
                              //   logIn = false;
                              //   signUp = true;
                              // });
                              _SignUpNotifier.value = true;
                              _LoginNotifier.value = false;
                            },
                            child: ValueListenableBuilder(
                              valueListenable: _SignUpNotifier,
                              builder: (BuildContext context, bool val,
                                  Widget? child) {
                                if (val) {
                                  return signupTabDesign();
                                } else {
                                  return Text(
                                    "Create Account",
                                    style: TextStyle(
                                      color: kTextColor1,
                                      fontSize: getProportionalWidth(17),
                                    ),
                                  );
                                }
                              },
                            )
                            // child: signUp
                            //     ? signupTabDesign()
                            //     : Text(
                            //         "Create Account",
                            //         style: TextStyle(
                            //           color: Colors.red,
                            //           fontSize:
                            //               getProportionalWidth(
                            //                   17),
                            //         ),
                            //       ),
                            ),
                        GestureDetector(
                            onTap: () {
                              // setState(() {
                              //   logIn = true;
                              //   signUp = false;
                              // });
                              _LoginNotifier.value = true;
                              _SignUpNotifier.value = false;
                            },
                            child: ValueListenableBuilder(
                              valueListenable: _LoginNotifier,
                              builder: (BuildContext context, bool val,
                                  Widget? child) {
                                if (val) {
                                  return loginTabDesign();
                                } else {
                                  return Text(
                                    "Login",
                                    style: TextStyle(
                                      color: kTextColor1,
                                      fontSize: getProportionalWidth(17),
                                    ),
                                  );
                                }
                              },
                            )

                            // logIn
                            //     ? loginTabDesign()
                            //     : Text(
                            //         "Login",
                            //         style: TextStyle(
                            //           color: kTextColor1,
                            //           fontSize:
                            //               getProportionalWidth(
                            //                   17),
                            //         ),
                            //       ),

                            ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getProportionalHeight(25),
                  ),
                  ValueListenableBuilder(
                    valueListenable: _SignUpNotifier,
                    builder: (BuildContext context, bool UpVal, Widget? child) {
                      return ValueListenableBuilder(
                          valueListenable: _LoginNotifier,
                          builder: (BuildContext context, bool UpVal,
                              Widget? child) {
                            print(UpVal);
                            return UpVal
                                ? LoginForm(
                                    emailController: _emailController,
                                    passwordController: _passwordController,
                                  )
                                //
                                : SignupForm(
                                    nameController: _nameController,
                                    emailController: _emailController,
                                    passwordController: _passwordController,
                                  );
                          });
                    },
                  )
                ],
              ),
            ),
          );
        });
  }

  Container loginTabDesign() {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: getProportionalWidth(70)!),
      alignment: Alignment.center,
      height: SizeConfig.screenHeight,
      child: Text(
        "Login",
        style: TextStyle(
          color: kPrimaryColor,
          fontSize: getProportionalWidth(17),
        ),

        // textAlign: TextAlign.center,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
              width: getProportionalWidth(2)!,
              color: kPrimaryColor.withOpacity(0.9)),
        ),
      ),
    );
  }

  Container signupTabDesign() {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: getProportionalWidth(5)!),
      alignment: Alignment.center,
      height: SizeConfig.screenHeight,
      child: Text(
        "Create Account",
        style: TextStyle(
          color: kPrimaryColor,
          fontSize: getProportionalWidth(17),
        ),

        // textAlign: TextAlign.center,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
              width: getProportionalWidth(2)!,
              color: kPrimaryColor.withOpacity(0.9)),
        ),
      ),
    );
  }
}
