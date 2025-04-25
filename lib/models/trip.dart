
import 'dart:core';

import 'package:flutter/material.dart';
enum Season{
  winter,
  spring,
  summer,
  Autumn,
}
enum TripType{
Exploration,
Recovery,
Activities,
Therapy, religion,

}

class Trip {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> activities;
  final List<String>program;
  final int duration;
  final Season season;
  final TripType tripType;
  final bool  isInSummer;
  final bool  isInWinter;
  final bool isForFamilies;


// class Trip {
//   final String id;
//   final List<String> categories;
//   final String title;
//   final String imageUrl;
//   final <String> activities;
//   final <String> propram;
//    final int duration;
//    final Season season;
//    final TripType tripType;
//    final bool isInsummer;
//    final bool isInwinter;
//    final bool isForfamilies;



    //  Trip({
    // required this.id,required this.categories,
    // required this.activities,
    // required this.imageUrl,
    // required this.duration,required this.isForFamilies,
    // required this.title,required this.program,required this.tripType,
    // required this.season,required this. isInSummer,required this. isInWinter, 
    // required List<String>program, required boolisInSummer, required boolisForFamilies, required bool isInWinter,
  
  Trip({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.activities,
    required this.program,
    required this.duration,
    required this.season,
    required this.tripType,
    required this.isInSummer,
    required this.isInWinter,
    required this.isForFamilies,
   });

   
}





