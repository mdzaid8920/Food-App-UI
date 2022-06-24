import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/HomeScreen/components/banner.dart';
import 'package:food_app_ui/screens/HomeScreen/components/customAppBar.dart';
import 'package:food_app_ui/screens/HomeScreen/components/dish_card.dart';
import 'package:food_app_ui/utils/size_config.dart';

import '../../../components/header_section.dart';
import '../../../components/resturantCard.dart';
import '../../../components/search_bar.dart';
import '../../../utils/data.dart';

class Body extends StatefulWidget {
  Body({Key? key, required this.testKey}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
  GlobalKey<ScaffoldState>? testKey;
}

class _BodyState extends State<Body> {
  // final List<Map<String, String>> bannerData = [
  //   {"imageSrc": "assets/images/banner-1.png"},
  //   {"imageSrc": "assets/images/banner.jpg"},
  //   {"imageSrc": "assets/images/banner-2.png"}
  // ];

  // final List<Map<String, String>> homeDishes = [
  //   {
  //     "imagesSrc": "assets/images/Bariyani.png",
  //     "title": "Chicken Bariyani",
  //     "location": "Zn Hotel & Resturant"
  //   },
  //   {
  //     "imagesSrc": "assets/images/Sauce.png",
  //     "title": "Sauce Tonkotsa",
  //     "location": "Handi Resturant Lahore"
  //   },
  //   {
  //     "imagesSrc": "assets/images/tikka boti.jpg",
  //     "title": "Chicken Bariyani",
  //     "location": "Zn Hotel & Resturant"
  //   },
  // ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBar(widget: widget),
          const SearchBar(),
          SizedBox(
            height: getProportionalHeight(40),
          ),
          Container(
            height: getProportionalHeight(250),
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: bannerData.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return HomeBanner(index: index);
                }),
          ),
          SizedBox(
            height: getProportionalHeight(40),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: getProportionalWidth(12)!),
            child: Column(
              children: [
                HeaderSection(
                  sectionTitile: "Today New Arivable",
                  desc: "Best of the today food list update",
                  press: () {},
                ),
                SizedBox(
                  height: getProportionalHeight(40),
                ),
                Container(
                  height: getProportionalHeight(400),
                  child: ListView.builder(
                      itemCount: homeDishes.length,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return DishCard(
                          imageSrc: homeDishes[index]['imageSrc']!,
                          title: homeDishes[index]['title']!,
                          location: homeDishes[index]['location']!,
                          press: () {
                            print(homeDishes[index]['title']);
                          },
                        );
                      }),
                )
              ],
            ),
          ),
          SizedBox(
            height: getProportionalHeight(40),
          ),
          // HeaderSection(
          //     sectionTitile: "Explore Resturants",
          //     desc: "Check your city Near by Resturants",
          //     press: () {}),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: getProportionalWidth(14)!),
            child: Column(
              children: [
                HeaderSection(
                  sectionTitile: "Explore Resturants",
                  desc: "Check your city Near by Resturants",
                  press: () {},
                ),
                SizedBox(
                  height: getProportionalHeight(30),
                ),
                // ResturantCard(),
                ...List.generate(
                  3,
                  (index) => ResturantCard(
                    imageSrc: resturantData[index]['imageSrc']!,
                    title: resturantData[index]['title']!,
                    location: resturantData[index]['location']!,
                    buttonText: "Book",
                    cardPress: () {
                      print(resturantData[index]);
                    },
                    buttonPress: () {
                      print(resturantData[index]);
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
