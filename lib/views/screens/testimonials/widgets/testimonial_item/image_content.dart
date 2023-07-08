import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:personal_portfolio/utils/colors_app.dart';

class ImageProfileContent extends StatelessWidget {
  const ImageProfileContent({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: ClipOval(
        child: image.isEmpty
            ? SvgPicture.asset(
                'assets/icons/profile-icon.svg',
              )
            : const FadeInImage(
                placeholder: AssetImage(
                  'assets/images/loading-gif.jpg',
                ),
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Rus-Por2012_%2816%29.jpg/451px-Rus-Por2012_%2816%29.jpg',
                ),
              ),
      ),
    );
  }
}
