import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app_ui/utils/constants.dart';
import 'package:food_app_ui/utils/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: getProportionalHeight(200),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 80,
                  // color: Colors.red,

                  child: Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              "assets/images/profile.jpg",
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "MD Zaid",
                              style: TextStyle(color: kTextColor2),
                            ),
                            Text(
                              "muhammadzaidabcd@gmail.com",
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Stack(
                            children: [
                              Container(
                                padding: EdgeInsets.all(7),
                                margin:
                                    EdgeInsets.all(getProportionalHeight(15)!),
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: kTextColor1.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: SvgPicture.asset(
                                  "assets/icons/Bell.svg",
                                  color: kTextColor2,
                                ),
                              ),
                              Positioned(
                                right: 0,
                                // bottom: 0,
                                top: 5,
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 15,
                                  height: 15,
                                  child: Text('5',style: TextStyle(color: Colors.white,fontSize: 10),),
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
