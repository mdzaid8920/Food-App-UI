import 'package:flutter/material.dart';
import 'package:food_app_ui/components/customButton.dart';
import 'package:food_app_ui/components/header_section.dart';
import 'package:food_app_ui/components/resturantCard.dart';
import 'package:food_app_ui/screens/Resturant_Detail_Screen/resturant_detail_screen.dart';
import 'package:food_app_ui/utils/constants.dart';
import 'package:food_app_ui/utils/data.dart';
import 'package:food_app_ui/utils/size_config.dart';

import '../../../components/resturant_detail_card.dart';

class Body extends StatefulWidget {
  Body({Key? key, required this.data}) : super(key: key);
  final Map<String, String> data;
  bool isLoading = false;
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    print(widget.data);
    final data = widget.data;
    return Column(
      children: [
        SizedBox(
          height: getProportionalHeight(25),
        ),
        ResturantDetailCard(
            title: data['title']!,
            location: data['location']!,
            imageSrc: data['imageSrc']!,
            press: () {}),
        SizedBox(
          height: getProportionalHeight(25),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  HeaderSection(
                    sectionTitile: "List other Resturant",
                    desc: "Check the menu at this resturant",
                    press: () {},
                  ),
                  SizedBox(
                    height: getProportionalHeight(10),
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: resturantData.length,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(
                                color: Colors.grey.withOpacity(0.3),
                              ),
                            ),
                            child: ResturantCard(
                                imageSrc: resturantData[index]['imageSrc']!,
                                title: resturantData[index]['title']!,
                                location: resturantData[index]['location']!,
                                cardPress: () {},
                                buttonPress: () {
                                  Navigator.popAndPushNamed(
                                      context, ResturantDetailScreen.routeName,
                                      arguments: resturantData[index]);
                                },
                                buttonText: "Check"),
                          );
                        }),
                  ),
                  Container(
                    padding: EdgeInsets.all(getProportionalWidth(17)!),
                    height: 80,
                    width: double.infinity,
                    child: widget.isLoading
                        ? const Center(
                            child: CircularProgressIndicator(
                            color: kPrimaryColor,
                          ))
                        : CustomButton(
                            buttonColor: kPrimaryColor,
                            textColor: Colors.white,
                            text: "Booking",
                            press: () {
                              print("Cliked");
                              setState(() {
                                widget.isLoading = true;
                              });
                              Future.delayed(const Duration(seconds: 2), () {
                                setState(() {
                                  widget.isLoading = false;
                                });
                              });
                            },
                            SvgSrc: ""),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
