import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/size_config.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    required this.buttonColor,
    required this.textColor,
    required this.text,
    required this.press,
    required this.SvgSrc,
  }) : super(key: key);
  final Color buttonColor;
  final Color textColor;
  final String text;
  final String SvgSrc;
  final VoidCallback press;
  // bool isLaoding = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: getProportionalWidth(30)!),
      color: Colors.transparent,
      child: GestureDetector(
          onTap: press,
          child: Container(
              alignment: Alignment.center,
              height: getProportionalHeight(120),
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgSrc.isNotEmpty
                      ? Container(
                          margin:
                              EdgeInsets.only(right: getProportionalWidth(10)!),
                          child: SvgPicture.asset(SvgSrc),
                        )
                      : Container(),
                  Text(
                    text,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: textColor),
                  ),
                ],
              ))),
    );
  }
}



// InkWell(
//       borderRadius: BorderRadius.circular(10),
//         onTap: press,
//         child: Container(
//           padding: EdgeInsets.symmetric(horizontal: getProportionalWidth(30)!),
//           width: double.infinity,
//           // width: 400,
//           child: Container(
//               alignment: Alignment.center,
//               height: getProportionalHeight(120),
//               decoration: BoxDecoration(
//                 color: buttonColor,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   SvgSrc.isNotEmpty
//                       ? Container(
//                           margin:
//                               EdgeInsets.only(right: getProportionalWidth(10)!),
//                           child: SvgPicture.asset(SvgSrc),
//                         )
//                       : Container(),
//                   Text(
//                     text,
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: textColor),
//                   ),
//                 ],
//               )),
//         ))