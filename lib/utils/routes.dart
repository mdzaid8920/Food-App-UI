import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/Change_Password_Screen/change_password_screen.dart';
import 'package:food_app_ui/screens/Final_Success_Page/final_success_page.dart';
import 'package:food_app_ui/screens/ForgetPasswordScreen/forget_password_screen.dart';
import 'package:food_app_ui/screens/Registeration_screen/register_screen.dart';
import 'package:food_app_ui/screens/Resturant_Detail_Screen/resturant_detail_screen.dart';
import 'package:food_app_ui/screens/Success_screen/success_screen.dart';
import 'package:food_app_ui/screens/welcome_screen/welcome_screen.dart';

import '../screens/Navigation/CustomNavigation.dart';

final Map<String, WidgetBuilder> routes = {
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
  RegisterationScreen.routeName: (context) => RegisterationScreen(),
  ForgetPassword.routeName: (context) => ForgetPassword(),
  SuccessScreen.routeName: (context) => SuccessScreen(),
  ChangePasswordScreen.routeName: (context) => ChangePasswordScreen(),
  FinalSuccessPage.routeName: (context) => FinalSuccessPage(),
  // HomeScreen.routeName: (context) => HomeScreen(),
  CustomNavigationBarItem.routeName: (context) => CustomNavigationBarItem(),
  ResturantDetailScreen.routeName: (context) => ResturantDetailScreen(),
};
