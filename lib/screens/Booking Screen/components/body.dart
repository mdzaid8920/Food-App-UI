import 'package:flutter/material.dart';
import 'package:food_app_ui/components/customButton.dart';
import 'package:food_app_ui/components/resturantCard.dart';
import 'package:food_app_ui/screens/Resturant_Detail_Screen/resturant_detail_screen.dart';
import 'package:food_app_ui/utils/constants.dart';
import 'package:food_app_ui/utils/data.dart';
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
        Container(
          alignment: Alignment.center,
          height:
              MediaQuery.of(context).size.height - getProportionalHeight(1500)!,
          width: double.infinity,
          child: Text(
            "Booking History",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: getProportionalWidth(17),
            ),
          ),
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15)),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: resturantData.length,
              itemBuilder: (context, index) {
                return ResturantCard(
                  imageSrc: resturantData[index]['imageSrc']!,
                  title: resturantData[index]['title']!,
                  location: resturantData[index]['location']!,
                  buttonText: "Check",
                  cardPress: () {},
                  buttonPress: () {
                    // Navigator.pushNamed(
                    //     context, ResturantDetailScreen.routeName);
                    Navigator.pushNamed(context, ResturantDetailScreen.routeName,arguments: resturantData[index]);
                  },
                );
              }),
        )
      ],
    );
  }
}
