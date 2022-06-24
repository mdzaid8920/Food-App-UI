import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/constants.dart';
import '../utils/size_config.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionalWidth(45)!),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: getProportionalWidth(10)!),
        width: double.infinity,
        height: getProportionalHeight(110),
        decoration: BoxDecoration(
            color: Color(0xffE6E7E9), borderRadius: BorderRadius.circular(17)),
        child: TextField(
          decoration: InputDecoration(
              hintText: "Search",
              hintStyle: TextStyle(fontSize: 15, color: kTextColor1),
              border: InputBorder.none,
              prefixIcon: Padding(
                padding: const EdgeInsets.all(14.0),
                child: SvgPicture.asset(
                  "assets/icons/Search Icon.svg",
                  color: kTextColor1,
                ),
              )),
        ),
      ),
    );
  }
}
