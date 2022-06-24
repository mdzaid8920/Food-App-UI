import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/welcome_screen/welcome_screen.dart';
import 'package:food_app_ui/utils/constants.dart';
import 'package:food_app_ui/utils/routes.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food APP UI',
      theme: ThemeData(
        textTheme: const TextTheme(
            bodyText1: TextStyle(color: kTextColor2),
            bodyText2: TextStyle(color: kTextColor1)),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.black87,
            fontSize: 23,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black87),
        ),
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Muli",
      ),
      // home: WelcomeScreen(),
      initialRoute: WelcomeScreen.routeName,
      routes: routes,
    );
  }
}
