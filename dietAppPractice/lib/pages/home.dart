import 'package:flutter/material.dart';
import 'package:portalinvenova/models/category_model.dart';
import 'package:portalinvenova/models/diet_model.dart';
import 'package:portalinvenova/models/popular_model.dart';
import '../utils/appBar.dart';
import '../utils/_popularSection.dart';
import '../utils/dietSection.dart';
import '../utils/categoriesSection.dart';
import '../utils/searchBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = [];
  List<DietModel> diets = [];
  List<PopularModel> populars = [];

  void _getInitialInfo() {
    categories = CategoryModel.getCategories();
    diets = DietModel.getDiets();
    populars = PopularModel.getPopulars();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar(context, "Breakfast", '/home'),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          searchBar(),
          SizedBox(height: 40),
          categoriesSection(screenWidth, categories),
          SizedBox(height: 40),
          dietSection(screenWidth, diets),
          SizedBox(height: 40),
          popularSection(screenWidth, populars),
        ],
      ),
    );
  }
}
