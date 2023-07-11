import 'package:flutter/material.dart';
import 'package:personal_portfolio/controllers/testomonials_controller.dart';

import 'modal_form_content.dart';

showModal(context) {
  return showModalBottomSheet(
    context: context,
    clipBehavior: Clip.none,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(4),
        topRight: Radius.circular(4),
      ),
    ),
    builder: (context) {
      return const ModalBottomFormContent();
    },
  ).whenComplete(() => TestimonialsController.to.clears());
}
