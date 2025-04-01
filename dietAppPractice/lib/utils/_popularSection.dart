import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portalinvenova/models/popular_model.dart';
import 'package:portalinvenova/pages/popularRecipies.dart';

Column popularSection(double screenWidth, List<PopularModel> populars) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text(
          'Popular',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      SizedBox(height: 15),
      Container(
        height: 240,
        child: ListView.separated(
          itemBuilder: (context, index) {
            return Container(
              height: 80,
              decoration: BoxDecoration(
                color: populars[index].boxColor,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff1D1617).withOpacity(0.11),
                    blurRadius: 40,
                    spreadRadius: 0.0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: SvgPicture.asset(populars[index].iconPath),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        populars[index].name,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(populars[index].level),
                          SizedBox(width: 10),
                          Text(populars[index].duration),
                          SizedBox(width: 10),
                          Text(populars[index].calories),
                          SizedBox(width: 10),
                        ],
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => PopularRecipies(
                                position: populars[index].position,
                              ),
                        ),
                      );
                    },
                    child: SizedBox(
                      height: 30,
                      width: 30,
                      child: SvgPicture.asset(
                        'assets/icons/expand_circle.svg',
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5),
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: 20);
          },
          itemCount: populars.length,
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.symmetric(horizontal: screenWidth * .05),
        ),
      ),
    ],
  );
}
