import 'package:flutter/material.dart';

import '../../../utils/size_config.dart';

class PageContent extends StatelessWidget {
  const PageContent({
    Key? key,
    required this.imageSrc,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String imageSrc;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(imageSrc),
        SizedBox(
          height: getProportionalHeight(75),
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: getProportionalWidth(24), color: Colors.black87),
        ),
        SizedBox(
          height: getProportionalHeight(20),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: getProportionalWidth(30)!),
          child: Text(
            description,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}