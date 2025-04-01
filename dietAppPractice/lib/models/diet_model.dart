import 'package:flutter/material.dart';

class DietModel {
  String name;
  String iconPath;
  String level;
  Color boxColor;
  String duration;
  String calories;
  bool viewIsSelected;

  DietModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.boxColor,
    required this.duration,
    required this.calories,
    required this.viewIsSelected,
  });

  static List<DietModel> getDiets() {
    List<DietModel> diets = [];

    diets.add(
      DietModel(
        name: 'Honey pancake',
        iconPath: 'assets/icons/pancake.svg',
        level: 'Easy',
        boxColor: Colors.indigo,
        duration: '30 mins',
        calories: '180 Kcal',
        viewIsSelected: true,
      ),
    );

    diets.add(
      DietModel(
        name: 'Canai Bread',
        iconPath: 'assets/icons/bread1.svg',
        level: 'Easy',
        boxColor: Colors.pink,
        duration: '20 mins',
        calories: '230 Kcal',
        viewIsSelected: false,
      ),
    );
    return diets;
  }
}
