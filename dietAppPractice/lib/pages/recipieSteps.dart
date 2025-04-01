// ignore: file_names
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/appBar.dart';
import '../models/popular_model.dart';

class Recipiesteps extends StatefulWidget {
  final int position;
  const Recipiesteps({super.key, required this.position});

  @override
  State<Recipiesteps> createState() => _RecipiestepsState();
}

class _RecipiestepsState extends State<Recipiesteps> {
  List<PopularModel> populars = [];

  void _getInitialInfo() {
    populars = PopularModel.getPopulars();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: appBar(
        context,
        '${populars[widget.position].name} steps',
        '/home',
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [const Text("Test")],
      ),
    );
  }
}
