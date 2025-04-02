import 'package:flutter/material.dart';

class PopularModel {
  String name;
  String iconPath;
  String level;
  Color boxColor;
  String duration;
  String calories;
  String routeName;
  int position;
  List<String> ingredients = [];
  List<String> steps = [];

  PopularModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.boxColor,
    required this.duration,
    required this.calories,
    required this.routeName,
    required this.position,
    required this.ingredients,
    required this.steps,
  });

  static List<PopularModel> getPopulars() {
    List<PopularModel> populars = [];

    populars.add(
      PopularModel(
        name: 'Blueberry pancake',
        iconPath: 'assets/icons/blueberry.svg',
        level: 'Medium',
        boxColor: Colors.white,
        duration: '30 mins',
        calories: '230 Kcal',
        routeName: '/blueBerryPancake',
        position: 0,
        ingredients: [
          '1 cup flour',
          '1 cup milk',
          '1 egg',
          '1/2 cup blueberries',
          '2 tbsp sugar',
          '1 tsp baking powder',
          '1/2 tsp salt',
        ],
        steps: [
          'Mix the flour, sugar, and milk in a bowl.',
          'Add the egg and beat until smooth.',
          'Fold in the blueberries gently.',
          'Heat a pan and pour small portions of the mixture.',
          'Cook until golden brown on both sides and serve warm.',
        ],
      ),
    );

    populars.add(
      PopularModel(
        name: 'Salmon Nigiri',
        iconPath: 'assets/icons/nigiri.svg',
        level: 'Medium',
        boxColor: Colors.white,
        duration: '20 mins',
        calories: '120 Kcal',
        routeName: '/sushi',
        position: 1,
        ingredients: [
          '1 cup sushi rice',
          '1/2 lb salmon fillet',
          '1/4 cup rice vinegar',
          '1 tbsp sugar',
          '1 tsp salt',
          'Nori sheets',
        ],
        steps: [
          'Cook the rice and mix it with rice vinegar and salt.',
          'Cut the salmon into thin slices.',
          'Form small rice balls with wet hands.',
          'Place a slice of salmon on top of each rice ball.',
          'Serve with soy sauce and wasabi.',
        ],
      ),
    );
    return populars;
  }
}
