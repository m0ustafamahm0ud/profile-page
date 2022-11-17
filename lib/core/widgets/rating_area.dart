import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingArea extends StatelessWidget {
  const RatingArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      itemSize: 25,
      initialRating: 3,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
        size: 14,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
    ;
  }
}
