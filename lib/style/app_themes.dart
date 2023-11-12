import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project1/shared/constants.dart';

ThemeData lighttheme = ThemeData(
     primarySwatch: Colors.green,
     floatingActionButtonTheme:
     FloatingActionButtonThemeData(backgroundColor: Colors.green),
     scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.grey),
        titleTextStyle: TextStyle(
            fontFamily: 'jannah',
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 20),
        backgroundColor: Colors.white,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: abyd,
          statusBarIconBrightness: Brightness.dark,
        )),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.green,
      elevation: 20,
    ),
    textTheme: TextTheme(
      bodyText1:
      TextStyle(fontFamily: 'jannah', fontSize: 16, color: abyd),
      bodyText2:
      TextStyle(fontFamily: '',fontSize: 18, color: abyd),
    ),
   );

ThemeData darktheme = ThemeData(
    // primarySwatch: Colors.green,
    // scaffoldBackgroundColor: lightColor,
    // appBarTheme: AppBarTheme(
    //     backgroundColor: lightColor,
    //     elevation: 0,
    //     systemOverlayStyle: SystemUiOverlayStyle(
    //         statusBarColor: lightColor,
    //         statusBarIconBrightness: statusBarIconBrightness)),
    // bottomNavigationBarTheme: BottomNavigationBarThemeData(
    //     backgroundColor: lightColor,
    //     type: BottomNavigationBarType.fixed,
    //     selectedItemColor: Colors.green,
    //     elevation: 20,
    //     unselectedItemColor: Colors.grey
    // ),
    // textTheme: TextTheme(
    //   bodyText1:
    //   TextStyle(fontFamily: 'jannah', fontSize: 18, color: darkColor),
    //   bodyText2: TextStyle(fontSize: 18, color: blackColor),
    //)
);
