import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StoreIconContent extends StatelessWidget {
  const StoreIconContent({super.key, required this.asset, this.onTap});
  final String asset;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 25,
        width: 25,
        padding: const EdgeInsets.all(3),
        decoration: const BoxDecoration(shape: BoxShape.circle),
        child: SvgPicture.asset(asset),
      ),
    );
  }
}
