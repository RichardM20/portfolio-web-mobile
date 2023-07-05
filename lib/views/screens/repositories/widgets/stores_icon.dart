import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:html' as html;

class StoresIconContent extends StatelessWidget {
  const StoresIconContent(
      {super.key, required this.appstore, required this.playstore});
  final String appstore;
  final String playstore;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => html.window.open(
            appstore,
            '_blank',
          ),
          child: SvgPicture.asset(
            'assets/icons/app-store.svg',
            height: 15,
          ),
        ),
        GestureDetector(
          onTap: () => html.window.open(
            playstore,
            '_blank',
          ),
          child: SvgPicture.asset(
            'assets/icons/play-store.svg',
            height: 25,
          ),
        ),
      ],
    );
  }
}
