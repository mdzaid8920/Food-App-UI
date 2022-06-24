import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/Registeration_screen/register_screen.dart';
import 'package:food_app_ui/screens/welcome_screen/components/pageContent.dart';
import 'package:food_app_ui/utils/constants.dart';
import 'package:food_app_ui/utils/routes.dart';
import 'package:food_app_ui/utils/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> pagesData = [
    {
      "image": "assets/images/TrackingMaps.png",
      "title": "Nearby Resturants",
      "description":
          "You don't have to go far to find a good resturant.we have provided all the resturants that is near you.",
    },
    {
      "image": "assets/images/Order illustration.png",
      "title": "Select the Favorites Menu",
      "description":
          "Now eat well, don't leave the house,You can choose your favorite food only with one click",
    },
    {
      "image": "assets/images/Safe Food.png",
      "title": "Good food at a cheap price",
      "description":
          "You can eat at expensive restaurants with affordable price",
    },
  ];

  int pageIndex = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(children: [
      Expanded(
        flex: 3,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: PageView.builder(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  pageIndex = value;
                });
              },
              itemCount: pagesData.length,
              itemBuilder: (context, index) {
                return PageContent(
                    imageSrc: pagesData[index]['image']!,
                    title: pagesData[index]['title']!,
                    description: pagesData[index]['description']!);
              }),
        ),
      ),
      Expanded(
        child: Column(children: [
          Spacer(),
          SizedBox(
            height: getProportionalHeight(70),
          ),
          Container(
            // padding:
            //     EdgeInsets.symmetric(horizontal: getProportionalWidth(25)!),
            height: getProportionalHeight(80),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'SKIP',
                  style: TextStyle(color: Colors.black54),
                ),
                Container(
                  width: getProportionalWidth(70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      pagesData.length,
                      (index) => pagesDot(index: index),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    pageIndex = pageIndex + 1;
                    if (pageIndex <= 2) {
                      // _pageController.animateToPage(pageIndex,
                      //     duration: Duration(microseconds: 300),
                      //     curve: Curves.bounceIn);
                      _pageController.animateToPage(pageIndex,
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeInOutCubic);
                      print("if part");
                    } else {
                      print("else part");
                      Navigator.pushReplacementNamed(
                          context, RegisterationScreen.routeName);
                    }
                  },
                  icon: const Icon(Icons.arrow_forward),
                  color: kPrimaryColor,
                ),
              ],
            ),
          ),
          const Spacer(),
        ]),
      ),
    ]));
  }

  Container pagesDot({required int index}) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: (index == pageIndex) ? kPrimaryColor : kTextColor1),
    );
  }
}
