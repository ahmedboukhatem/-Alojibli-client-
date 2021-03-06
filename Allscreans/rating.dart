import 'package:flutter/material.dart';

class Rating extends StatefulWidget {

  static const String idScreen = "Rating";
  final int maximumRating;
  final Function(int) onRatingSelected;

  Rating(this.onRatingSelected, [this.maximumRating = 5]);

  @override
  _Rating createState() => _Rating();
}

class _Rating extends State<Rating> {
  int _currentRating = 0;

  Widget _buildRatingStar(int index) {
    if (index < _currentRating) {
      return Icon(Icons.star, color: Colors.orange, size: 40,);
    } else {
      return Icon(Icons.star_border_outlined, size: 40,);
    }
  }

  Widget _buildBody() {
    final stars = List<Widget>.generate(this.widget.maximumRating, (index) {
      return GestureDetector(
        child: _buildRatingStar(index),
        onTap: () {
          setState(() {
            _currentRating = index + 1;
          });

          this.widget.onRatingSelected(_currentRating);
        },
      );
    });

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: stars,
        ),

      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }
}
