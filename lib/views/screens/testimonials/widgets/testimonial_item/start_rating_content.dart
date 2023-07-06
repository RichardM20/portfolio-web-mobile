import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final double rating;
  final double starSize;

  const StarRating({
    super.key,
    required this.rating,
    this.starSize = 24,
  });

  @override
  Widget build(BuildContext context) {
    final fullStars = rating.floor();
    final halfStar = (rating - fullStars) >= 0.5;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        IconData starIcon;
        Color starColor;

        if (index < fullStars) {
          starIcon = Icons.star;
          starColor = Colors.amber;
        } else if (index == fullStars && halfStar) {
          starIcon = Icons.star_half;
          starColor = Colors.amber;
        } else {
          starIcon = Icons.star_border;
          starColor = Colors.grey;
        }

        return Icon(
          starIcon,
          size: starSize,
          color: starColor,
        );
      }),
    );
  }
}
