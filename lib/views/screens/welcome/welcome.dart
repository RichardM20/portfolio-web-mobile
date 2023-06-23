import 'package:flutter/material.dart';

import 'widgets/top/presentation_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.1,
          vertical: 30,
        ),
        child: Column(
          children: const [
            PresentationTopContent(),
          ],
        ),
      ),
    );
  }
}
