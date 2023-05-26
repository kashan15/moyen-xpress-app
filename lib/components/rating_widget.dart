import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';

class RatingWidget extends StatelessWidget {
  dynamic initialRating;
  RatingWidget({
    this.initialRating
});

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return RatingBar.builder(
      initialRating: initialRating,
      minRating: 1,
      direction:
      Axis.horizontal,
      allowHalfRating: true,
      itemSize: _height * 0.0125,
      itemCount: 5,
      itemPadding: EdgeInsets
          .symmetric(
          horizontal:
          1.0),
      itemBuilder:
          (context, _) =>
          Icon(
            Icons.star,
            color: homeBoxColor,
          ),
      onRatingUpdate:
          (rating) {
        print(rating);
      },
    );
  }
}
