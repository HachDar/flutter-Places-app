import 'package:flutter/material.dart';
import 'package:zakrny_app/widgets/app_data.dart';
import 'package:zakrny_app/widgets/trip_item.dart';

class CategoryTripsScreen extends StatelessWidget {
  static const screenRout = '/category_trips';

//final String categoryId;
//final String categoryTitle;

  //const CategoryTripsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgument =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryId = routeArgument['id'];
    final categoryTitle = routeArgument['title'];
    final filteredTrips = Trips_data.where((trip) {
      return trip.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        flexibleSpace: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text(
              categoryTitle!,
              style: TextStyle(
                fontFamily: 'ElMessiri',
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return TripItem(

              title: filteredTrips[index].title,
              imageUrl: filteredTrips[index].imageUrl,
              duration: filteredTrips[index].duration,
              tripType: filteredTrips[index].tripType,
              season: filteredTrips[index].season);
        },
        itemCount: filteredTrips.length,
      ),
    );
  }
}
