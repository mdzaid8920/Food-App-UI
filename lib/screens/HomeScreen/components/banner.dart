import 'package:flutter/material.dart';

import '../../../utils/data.dart';
import '../../../utils/size_config.dart';

class HomeBanner extends StatelessWidget {
  HomeBanner({
    Key? key,
    required this.index,
  }) : super(key: key);

  // final List<Map<String, String>> bannerData = [
  //   {"imageSrc": "assets/images/banner-1.png"},
  //   {"imageSrc": "assets/images/banner.jpg"},
  //   {"imageSrc": "assets/images/banner-2.png"}
  // ];
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionalWidth(15)!),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(27),
        child: Container(
            height: getProportionalHeight(230),
            width: getProportionalWidth(270),
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Image.asset(
              bannerData[index]['imageSrc']!,
              fit: BoxFit.fill,
            )),
      ),
    );
  }
}
