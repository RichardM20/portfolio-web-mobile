import 'package:flutter/material.dart';
import 'package:personal_portfolio/controllers/navbar_controller.dart';
import 'package:personal_portfolio/utils/list_action_navbar.dart';
import 'package:personal_portfolio/utils/typography_style.dart';

import 'actions/action_button.dart';

class NavBarContent extends StatelessWidget {
  NavBarContent({super.key});
  final _contrller = NavbarController.to;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.05,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Rick Developer",
            style: subtitlePrimaryStyle,
          ),
          Row(
            children: List.generate(
              navbarActionsList.length,
              (index) => ActionButton(
                isHover: navbarActionsList[index]['isHover'],
                name: navbarActionsList[index]['name'],
                onTap: () => _contrller.pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.easeIn,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
