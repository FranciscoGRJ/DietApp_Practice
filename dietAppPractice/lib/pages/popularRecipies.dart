// ignore: file_names
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portalinvenova/pages/recipieSteps.dart';
import '../utils/appBar.dart';
import '../models/popular_model.dart';

class PopularRecipies extends StatefulWidget {
  final int position;
  const PopularRecipies({super.key, required this.position});

  @override
  State<PopularRecipies> createState() => _PopularRecipiesState();
}

class _PopularRecipiesState extends State<PopularRecipies> {
  List<PopularModel> populars = [];

  void _getInitialInfo() {
    populars = PopularModel.getPopulars();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();

    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: appBar(context, 'Ingredients', '/home'),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: SvgPicture.asset(populars[widget.position].iconPath),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      populars[widget.position].name,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Level: ${populars[widget.position].level}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          VerticalDivider(color: Colors.black, thickness: 1),
                          Text(
                            'Time: ${populars[widget.position].duration}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          VerticalDivider(color: Colors.black, thickness: 1),
                          Text(
                            'Calories: ${populars[widget.position].calories}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: screenWidth * 0.9,
                    height: 500,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 218, 210, 210),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "Ingredients",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Expanded(
                          child: ListView.builder(
                            itemCount:
                                populars[widget.position].ingredients.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                leading: Icon(
                                  Icons.check_circle,
                                  color: Colors.grey,
                                ),
                                title: Text(
                                  populars[widget.position].ingredients[index],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 218, 210, 210),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 50,
                      width: 120,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Steps",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 25,
                              height: 25,
                              child: SvgPicture.asset(
                                'assets/icons/expand_circle.svg',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => Recipiesteps(
                                position: populars[widget.position].position,
                              ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
