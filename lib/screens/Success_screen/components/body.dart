import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_app_ui/components/customButton.dart';
import 'package:food_app_ui/screens/Change_Password_Screen/change_password_screen.dart';
import 'package:food_app_ui/utils/constants.dart';
import 'package:food_app_ui/utils/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final TapGestureRecognizer _recognizer = TapGestureRecognizer();


  
  @override
  void dispose() {
    _recognizer.dispose();
    super.dispose();
  }

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
                          horizontal: getProportionalWidth(65)!),
                      child: const Text(
                        "Please check your email for create a new password",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionalHeight(100),
                ),
                RichText(
                    text: TextSpan(
                        text: "Can't get email? ",
                        style: TextStyle(
                            letterSpacing: getProportionalWidth(0.8),
                            color: Colors.black45,
                            fontWeight: FontWeight.w700),
                        children: [
                      TextSpan(
                        recognizer: _recognizer
                          ..onTap = () {
                            print("Resubmit Button Clicked!!!");
                          },
                        text: "Resubmit",
                        style: const TextStyle(color: kPrimaryColor),
                      ),
                    ]))
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
                    text: "Back Email",
                    press: () {
                      Navigator.pushReplacementNamed(
                          context, ChangePasswordScreen.routeName);
                    },
                    SvgSrc: ""),
              ],
            ))
      ],
    );
  }
}







// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:food_app_ui/components/customButton.dart';
// import 'package:food_app_ui/screens/Change_Password_Screen/change_password_screen.dart';
// import 'package:food_app_ui/utils/constants.dart';
// import 'package:food_app_ui/utils/size_config.dart';

// class Body extends StatefulWidget {
//   const Body({Key? key}) : super(key: key);

//   @override
//   State<Body> createState() => _BodyState();
// }

// class _BodyState extends State<Body> {
//   final TapGestureRecognizer _recognizer = TapGestureRecognizer();

//   @override
//   void dispose() {
//     _recognizer.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Expanded(
//             flex: 8,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Stack(
//                   alignment: Alignment.bottomCenter,
//                   children: [
//                     Image.asset(
//                       "assets/images/Success Icon.png",
//                     ),
//                     Container(
//                       padding:
//                           EdgeInsets.only(bottom: getProportionalHeight(100)!),
//                       child: Text(
//                         "Success",
//                         style: TextStyle(
//                             color: Colors.black54,
//                             fontSize: getProportionalWidth(25)),
//                       ),
//                     ),
//                     SizedBox(
//                       height: getProportionalHeight(25),
//                     ),
//                     SuccessText(
//                         text:
//                             "Please check your email for create a new password"),
//                   ],
//                 ),
//                 SizedBox(
//                   height: getProportionalHeight(100),
//                 ),
//                 SuccessRichText(recognizer: _recognizer),
//               ],
//             )),
//         Expanded(
//             flex: 2,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 CustomButton(
//                     buttonColor: kPrimaryColor,
//                     textColor: Colors.white,
//                     text: "Back Email",
//                     press: () {
//                       Navigator.pushReplacementNamed(
//                           context, ChangePasswordScreen.routeName);
//                     },
//                     SvgSrc: ""),
//               ],
//             ))
//       ],
//     );
//   }
// }

// class SuccessRichText extends StatelessWidget {
//   const SuccessRichText({
//     Key? key,
//     required TapGestureRecognizer recognizer,
//   }) : _recognizer = recognizer, super(key: key);

//   final TapGestureRecognizer _recognizer;

//   @override
//   Widget build(BuildContext context) {
//     return RichText(
//       text: TextSpan(
//         text: "Can't get email? ",
//         style: TextStyle(
//             letterSpacing: getProportionalWidth(0.8),
//             color: Colors.black45,
//             fontWeight: FontWeight.w700),
//         children: [
//           TextSpan(
//             recognizer: _recognizer
//               ..onTap = () {
//                 print("Resubmit Button Clicked!!!");
//               },
//             text: "Resubmit",
//             style: const TextStyle(color: kPrimaryColor),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class SuccessText extends StatelessWidget {
//   const SuccessText({
//     Key? key,
//     required this.text,
//   }) : super(key: key);
//   final String text;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: getProportionalWidth(65)!),
//       child: Text(
//         text,
//         textAlign: TextAlign.center,
//       ),
//     );
//   }
// }

