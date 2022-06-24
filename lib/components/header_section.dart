import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/size_config.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    Key? key,
    required this.sectionTitile,
    required this.desc, required this.press,
  }) : super(key: key);
  final String sectionTitile;
  final String desc;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              sectionTitile,
              style: TextStyle(
                color: Colors.black54,
                fontSize: getProportionalWidth(19),
              ),
            ),
            Text(
              desc,
              style: TextStyle(fontSize: getProportionalWidth(14)),
            )
          ],
        ),
        GestureDetector(
          onTap: press,
          child: Row(
            children: [
              Text("See All"),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: kTextColor1,
                size: getProportionalWidth(15),
              )
            ],
          ),
        )
      ],
    );
  }
}
