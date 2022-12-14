import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saheefa/controller_binding/view_model_binding.dart';
import 'package:saheefa/helper/cache_helper.dart';
import 'package:saheefa/helper/dio_integration.dart';
import 'package:saheefa/screens/home.dart';
import 'package:saheefa/screens/home/home.dart';
import 'package:saheefa/screens/registration.dart';

 import 'package:saheefa/util/mycolor.dart';
import 'package:saheefa/widget/OnBoardingPage%20.dart';

import 'helper/connection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await CacheHelper.init();
   DioUtilNew.getInstance();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
final token =CacheHelper.getData(key: 'token');

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    token;
  }
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News',
      initialBinding: ViewModelBinding(),

      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        // '/login': (context) => Login(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        // '/registeration': (context) => Registarion(),
        // '/home': (context) => Home(),
      },
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: mycolor.myCustomBlack,
        accentColor: mycolor.red,
         fontFamily: 'cairo',
         textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 40.0, fontWeight: FontWeight.bold, fontFamily: "cairo"),
          headline2: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.normal,
              fontFamily: "cairo"),
          headline3: TextStyle(fontSize: 28.0, fontWeight: FontWeight.normal),
          headline4: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w400,
              fontFamily: "cairo",
              color: Colors.black),
          headline5: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal),
          headline6: TextStyle(fontSize: 16.0, fontStyle: FontStyle.normal),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: "cairo"),
          bodyText1: TextStyle(fontSize: 15.0, fontFamily: "cairo"),
        ),
      ),
      home:token==null? OnBoardingPage():HomeScreen(),
    );
  }
}
