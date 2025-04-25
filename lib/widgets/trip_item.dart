import 'package:flutter/material.dart';
import 'package:flutter_firbas_1/models/trip.dart';
import 'package:flutter_firbas_1/main.dart';
import '../screen/trip_detilr.dart';

class TripItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final List<String> activities;
  final List<String> program;
  final int duration;
  final Season season;
  final TripType tripType;

  String get seasonText {
    if (season == Season.winter) {
      return "شتاء";
    }
    if (season == Season.summer) {
      return 'صيف';
    }
    if (season == Season.spring) {
      return 'ربيع';
    }
    if (season == Season.Autumn) {
      return 'خريف';
    }
    return "غير معروف";
  }

  String get tripTypeText {
    switch (tripType) {
      case TripType.Exploration:
        return "استكشاف";
      case TripType.religion:
        return "رحلة دينية";
      case TripType.Activities:
        return "نشاطات";
      default:
        return "غير معروف";
    }
  }

  // void selectTrip(BuildContext context) {
  //   Navigator.of(context).pushNamed(TripDetailr.screenRouts,
  //   arguments: id);
  // }
  void selectTrip(BuildContext context) {
  Navigator.of(context).pushNamed(
    TripDetail.screenRouts,
    arguments: id, // تمرير الـ id هنا
  );
}

  const TripItem(
      {super.key,
      required this.title,
      required this.activities,
      required this.program,
      required this.duration,
      required this.season,
      required this.tripType,
      required this.imageUrl, 
      required this.id});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectTrip(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 7,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0),
                      Colors.black.withOpacity(0.8),
                    ],
                    stops: [0.6, 1],
                  )),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  height: 250,
                  alignment: Alignment.bottomRight,
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headlineSmall,
                    overflow: TextOverflow.fade,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.today,
                        color: Colors.orange,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text("$duration ايام")
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.wb_sunny,
                        color: Colors.orange,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(seasonText)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.group,
                        color: Colors.orange,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(tripTypeText)
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
