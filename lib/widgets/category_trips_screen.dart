import 'package:flutter/material.dart';
import 'package:flutter_firbas_1/models/trip.dart';
import 'package:flutter_firbas_1/widgets/trip_item.dart';
import '../app_data.dart';

//class CategortTripsScren extends StatelessWidget {
class CategoryTripsScreen extends StatelessWidget {
  static const screenAout = 'category-trips';
  // const CategoryTripsScreen
  //(String id, String title, {super.key, required this.categoryId, required this.categoryTitle});

  // final String categoryId;
  //  final String categoryTitle;

  @override
  Widget build(BuildContext context) {
    final com =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryId = com['id'];
    final categoryTitle = com['title'];
    final filterdtrips = Trips_data.where((Trips) {
      return Trips.categories.contains(categoryId);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle!),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return TripItem(title: filterdtrips[index].title,
             activities: filterdtrips[index].activities, program:filterdtrips[index]. program, duration:filterdtrips[index]. duration, season:filterdtrips[index] .season, tripType:filterdtrips[index] .tripType, imageUrl:filterdtrips[index].imageUrl,
              id:filterdtrips[index].id,);
          },
          itemCount: filterdtrips.length,
        ));
  }
}
