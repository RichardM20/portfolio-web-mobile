import 'package:flutter/material.dart';
import 'package:personal_portfolio/controllers/testomonials_controller.dart';
import 'package:personal_portfolio/views/screens/testimonials/widgets/input/generic_input.dart';

class FormTestimonyContent extends StatelessWidget {
  FormTestimonyContent({super.key});
  final _controller = TestimonialsController.to;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _controller.formKey,
      child: Column(
        children: [
          GenericInput(
            controller: _controller.usernameController,
            hint: 'Enter your name',
            isMultiline: false,
            label: 'Name',
          ),
          const SizedBox(height: 5),
          GenericInput(
            controller: _controller.professionController,
            hint: 'Enter your profession',
            isMultiline: false,
            label: 'Profession',
          ),
          const SizedBox(height: 5),
          GenericInput(
            controller: _controller.messageController,
            hint: 'Enter your testimony',
            isMultiline: true,
            label: 'Testimony',
          ),
        ],
      ),
    );
  }
}
