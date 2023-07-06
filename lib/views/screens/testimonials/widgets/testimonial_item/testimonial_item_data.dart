import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:personal_portfolio/utils/colors_app.dart';
import 'package:personal_portfolio/utils/typography_style.dart';

import 'start_rating_content.dart';

class TestimonialItemData extends StatelessWidget {
  const TestimonialItemData({
    super.key,
    required this.image,
    required this.name,
    required this.rate,
    required this.message,
    required this.date,
    required this.profession,
  });
  final String image;
  final String name;
  final double rate;
  final String profession;
  final String message;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: primaryColor,
                        strokeAlign: 1.0,
                        width: 0.5,
                      ),
                    ),
                    child: image.isEmpty
                        ? SvgPicture.asset(
                            'assets/icons/profile-icon.svg',
                          )
                        : Image.network(
                            image,
                            fit: BoxFit.cover,
                          ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$name\n",
                          style: subtitlePrimaryStyle,
                        ),
                        TextSpan(
                          text: profession,
                          style: paragraphTextStyle,
                        )
                      ],
                    ),
                  )
                ],
              ),
              StarRating(
                rating: rate,
                starSize: 10,
              )
            ],
          ),
          const Divider(),
          Text(
            message,
            style: paragraphTextStyle,
          )
        ],
      ),
    );
  }
}
