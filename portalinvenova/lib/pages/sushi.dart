import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/appBar.dart';

class SushiRecipe extends StatelessWidget {
  const SushiRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: appBar(context, "Salmon nigiri", '/home'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [const Text("Sushi")],
      ),
    );
  }
}
