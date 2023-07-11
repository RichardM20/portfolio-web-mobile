import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/colors_app.dart';
import 'package:personal_portfolio/utils/typography_family.dart';
import 'package:personal_portfolio/utils/typography_style.dart';

class GenericInput extends StatelessWidget {
  const GenericInput({
    super.key,
    this.label,
    this.hint,
    this.isMultiline,
    required this.controller,
  });
  final String? label;
  final String? hint;
  final bool? isMultiline;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: paragraphTextStyle,
      controller: controller,
      minLines: isMultiline == true ? 5 : 1,
      maxLines: isMultiline == true ? 10 : 1,
      maxLength: isMultiline == true ? 300 : 10,
      validator: (value) {
        if (value!.length < 5) {
          return 'Enter a valid ${label!.toLowerCase()}';
        }
        if (isMultiline == true && value.length < 20) {
          return 'Your testimonial must contain a minimum of 20 characters';
        }
        return null;
      },
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        enabled: true,
        filled: true,
        labelText: label ?? "",
        hintText: hint ?? "",
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontFamily: regularStyle,
          fontSize: 10,
        ),
        labelStyle: subtitlePrimaryStyle,
        hoverColor: primaryColor30,
        fillColor: Colors.grey.shade200,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(3),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(3),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(3),
        ),
      ),
    );
  }
}
