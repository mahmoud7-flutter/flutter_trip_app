import 'package:flutter/material.dart';
import 'package:flutter_firbas_1/models/trip.dart';
import '../app_data.dart';

class TripDetail extends StatelessWidget {
  static const screenRouts = "/trip-detail";
  // Widget buildSectionTitle(BuildContext context, String Titletext) {
  //  return Container(
  //     alignment: Alignment.topRight,
  //     margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
  //     child: Text(
  //       Titletext,
  //       style: Theme.of(context).textTheme.headlineLarge,
  //     ),
  //   );
  // }
  Widget buildSectionTitle(BuildContext context, String Titletext) {
  return Container(
    alignment: Alignment.topRight,
    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    child: Text(
      Titletext,
      style: Theme.of(context).textTheme.headlineLarge,
    ),
  );
}

  Widget buildListVieContainar(Widget chaild) {
    return
    Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.symmetric(horizontal: 15),
        height: 200,
        padding: EdgeInsets.all(10),
        child: chaild);
  }

  @override
  Widget build(BuildContext context) {
    final tripid = ModalRoute.of(context)!.settings.arguments as String;
    final selectedTrip = Trips_data.firstWhere(
      (Trip) => Trip.id == tripid,
    );
    return Scaffold(
        appBar: AppBar(
          title: Text("${selectedTrip.title}"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  selectedTrip.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              buildSectionTitle(context, 'الانشطه'),
            buildListVieContainar(
                 ListView.builder(
                  itemCount: selectedTrip.activities.length,
                  itemBuilder: (ctx, index) => Card(
                    elevation: 0.3,
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Text(selectedTrip.activities[index]),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              buildSectionTitle(context, 'البرنامج اليومي'),
              buildListVieContainar(
                 ListView.builder(
                itemCount: selectedTrip.program.length,
               itemBuilder: (ctx, index) =>Column(
                 children: [
                   ListTile(
                                 leading: CircleAvatar(child: Text("يوم ${index+1}"),),
                                 title: Text(selectedTrip.program[index]),
                   ),
                   Divider(),
                 ],
               ) ,
              ),
              
              
           ),
           SizedBox(height: 100,) ],
          ),
        ));
  }
}
