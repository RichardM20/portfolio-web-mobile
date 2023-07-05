import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/colors_app.dart';
import 'package:personal_portfolio/utils/typography.dart';

dialog(context, {String? title, String? info}) {
  return showDialog(
    context: context,
    builder: (context) => Dialog(
      insetAnimationCurve: Curves.bounceIn,
      insetAnimationDuration: const Duration(milliseconds: 300),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title!,
                    style: paragraphSecondayTextStyle,
                  ),
                  const Divider(
                    color: primaryColor,
                    thickness: 5.0,
                  ),
                  Text(
                    info!,
                    style: paragraphTextStyle,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  ).timeout(
    const Duration(seconds: 1),
    onTimeout: () => Navigator.pop(context),
  );
}
