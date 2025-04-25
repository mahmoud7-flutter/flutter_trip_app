import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_firbas_1/screen/trip_detilr.dart';
import 'firebase_options.dart';

import 'package:flutter_firbas_1/screen/screens.dart';
//import 'package:';
import 'package:flutter_localizations/flutter_localizations.dart';
//import './screen/CategoryTripsScreen.dart';
import './widgets/category_trips_screen.dart';
import './widgets/category_item.dart';
import './screen/trip_detilr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //  debugShowMaterialGrid: true,
      localizationsDelegates:  [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar', 'AE'), // English
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'ElMessiri',
        textTheme: ThemeData.light().textTheme.copyWith(
              headlineSmall: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'ElMessiri',
                fontWeight: FontWeight.bold,
              ),
              titleLarge:const  TextStyle(
                color: Colors.blue,
                fontSize: 26,
                fontFamily: 'ElMessiri',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
   //   home: Screens(),
initialRoute:'/' ,
      routes: {
        '/':(ctx) => Screens(),
 CategoryTripsScreen.screenAout: (ctx) =>  CategoryTripsScreen(),
TripDetail.screenRouts: (ctx) => TripDetail()
 },
    );
  }
}



