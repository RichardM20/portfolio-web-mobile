import 'package:flutter/material.dart';
import 'package:personal_portfolio/controllers/navbar_controller.dart';
import 'package:personal_portfolio/utils/list_action_navbar.dart';
import 'package:personal_portfolio/views/widgets/theme/theme_app.dart';

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
          Text(
            "Rick Developer",
            style: TextStyle(
              fontFamily: FontStyles.boldStyle,
              fontSize: 10,
              color: const Color.fromARGB(255, 9, 73, 122),
            ),
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
