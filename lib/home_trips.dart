import 'package:flutter/material.dart';
import 'package:platzi1/reviewList.dart';
import 'description_place.dart';
import 'header.dart';

class HomeTrips extends StatelessWidget {
  String descriptionDummy="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam blandit sed ipsum a finibus. In fermentum sapien id orci accumsan molestie. Nam a finibus lacus. Sed sit amet sagittis mi. Sed id rhoncus magna.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam blandit sed ipsum a finibus. In fermentum sapien id orci accumsan molestie. Nam a finibus lacus. Sed sit amet sagittis mi. Sed id rhoncus magna.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam blandit sed ipsum a finibus. In fermentum sapien id orci accumsan molestie. Nam a finibus lacus. Sed sit amet sagittis mi. Sed id rhoncus magna.";
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            DescriptionPlace("Bahamas", descriptionDummy, 4),
            ReviewList()
          ],
        ),
        Header()
      ],
    );
  }
}
