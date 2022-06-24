import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app_ui/screens/Booking%20Screen/booking_screen.dart';
import 'package:food_app_ui/screens/HomeScreen/home_screen.dart';
import 'package:food_app_ui/screens/Profile_Screen/profile_screen.dart';
import 'package:food_app_ui/utils/constants.dart';

class CustomNavigationBarItem extends StatefulWidget {
  const CustomNavigationBarItem({Key? key}) : super(key: key);
  static String routeName = '/navigation';

  @override
  State<CustomNavigationBarItem> createState() =>
      _CustomNavigationBarItemState();
}

int currentIndex = 0;
final List<Widget> screens = [
  HomeScreen(),
  BookingScreen(),
  ProfileScreen(),
];

class _CustomNavigationBarItemState extends State<CustomNavigationBarItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 5,
                  spreadRadius: 5,
                  color: Colors.black38.withOpacity(0.1))
            ],
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: BottomNavigationBar(
            elevation: 10,
            backgroundColor: Colors.white,
            onTap: (value) {
              print(value);
              setState(() {
                currentIndex = value;
              });
            },
            selectedItemColor: kPrimaryColor,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/home.svg",
                  color: currentIndex == 0 ? kPrimaryColor : Colors.black45,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/booking.svg",
                    color: currentIndex == 1 ? kPrimaryColor : Colors.black45,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/profile.svg",
                    color: currentIndex == 2 ? kPrimaryColor : Colors.black45,
                  ),
                  label: ""),
            ],
          ),
        ),
      ),
      body: screens[currentIndex],
    );
  }
}



// Container(
//         decoration: BoxDecoration(
//             boxShadow: [
//               BoxShadow(
//                   blurRadius: 5,
//                   spreadRadius: 5,
//                   color: Colors.black38.withOpacity(0.1))
//             ],
//             color: Colors.white,
//             borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(20), topRight: Radius.circular(20))),
//         child: ClipRRect(
//           borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(20), topRight: Radius.circular(20)),
//           child: BottomNavigationBar(
//             elevation: 10,
//             backgroundColor: Colors.white,
//             onTap: (value) {
//               print(value);
//               setState(() {
//                 currentIndex = value;
//               });
//             },
//             selectedItemColor: kPrimaryColor,
//             items: [
//               BottomNavigationBarItem(
//                 icon: SvgPicture.asset(
//                   "assets/icons/home.svg",
//                   color: currentIndex == 0 ? kPrimaryColor : Colors.black45,
//                 ),
//                 label: "",
//               ),
//               BottomNavigationBarItem(
//                   icon: SvgPicture.asset(
//                     "assets/icons/booking.svg",
//                     color: currentIndex == 1 ? kPrimaryColor : Colors.black45,
//                   ),
//                   label: ""),
//               BottomNavigationBarItem(
//                   icon: SvgPicture.asset(
//                     "assets/icons/profile.svg",
//                     color: currentIndex == 2 ? kPrimaryColor : Colors.black45,
//                   ),
//                   label: ""),
//             ],
//           ),
//         ),
//       ),