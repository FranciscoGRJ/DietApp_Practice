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
        children: [
          Container(
            width: screenWidth * 0.8,
            height: 500,
            margin: EdgeInsets.only(
              left: screenWidth * .1,
              top: screenWidth * .1,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 216, 185, 93),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(
                    "Steps to follow:",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Expanded(
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: populars[widget.position].steps.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.check_circle_outline,
                              color: const Color.fromARGB(255, 165, 163, 163),
                            ),
                            title: Text(populars[widget.position].steps[index]),
                          ),
                          if (index <
                              populars[widget.position].steps.length - 1)
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                                right: 20,
                              ),
                              child: Divider(color: Colors.black),
                            ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
