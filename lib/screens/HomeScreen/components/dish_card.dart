import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';

class DishCard extends StatelessWidget {
  const DishCard({
    Key? key,
    required this.imageSrc,
    required this.title,
    required this.location,
    required this.press,
  }) : super(key: key);
  final String imageSrc;
  final String title;
  final String location;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: getProportionalWidth(4)!),
        padding: EdgeInsets.only(top: getProportionalHeight(15)!),
        width: getProportionalWidth(148),
        height: getProportionalHeight(400),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          // boxShadow: [
          //   BoxShadow(
          //     blurRadius: 0.5,
          //     color: Colors.black.withOpacity(0.3),
          //     offset: Offset(0.0,0.5)
          //   ),
          // ],
        ),
        child: Column(children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Image.asset(
                imageSrc,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
              child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionalWidth(10)!),
                  child: Column(
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontSize: getProportionalWidth(14)),
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: getProportionalHeight(15),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: kPrimaryColor,
                          ),
                          Expanded(
                            child: Text(
                              location,
                              textAlign: TextAlign.start,
                              style:
                                  TextStyle(fontSize: getProportionalWidth(12)),
                            ),
                          )
                        ],
                      )
                    ],
                  )))
        ]),
      ),
    );
  }
}
