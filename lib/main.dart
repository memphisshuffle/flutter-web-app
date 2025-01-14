import 'package:flutter/material.dart';
import 'package:flutter_web/layout.dart';
import 'package:flutter_web/screens/test_home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';


import 'screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}): super(key:key); // getX

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( // for getX instead of MaterialApp
      debugShowMaterialGrid: false,
      title: 'Distilled Child',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme
        ).apply(
          bodyColor: Colors.black
        ),
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder()
        }),
        primaryColor: Colors.blue
      ),
      // home: SiteLayout(), //SiteLayout for /screen/layout.dart (import)
      home: SiteLayout(), //SiteLayout for flutter_web/layout.dar (import)
      debugShowCheckedModeBanner: false,
    );
  }
}
