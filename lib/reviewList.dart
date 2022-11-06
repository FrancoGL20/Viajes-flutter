import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0, bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Review("assets/img/people.jpg", "Luisito", "1 review 3 stars",
              "I really liked this place"),
          Review("assets/img/ann.jpg", "Jessica", "1 review 4 stars",
              "This place is wonderful"),
          Review("assets/img/girl.jpg", "Mariana", "1 review 2 stars",
              "I loved everything here"),
          Review("assets/img/people.jpg", "Manuel", "1 review 4 stars",
              "I want to be here forever")
        ],
      ),
    );
  }
}
