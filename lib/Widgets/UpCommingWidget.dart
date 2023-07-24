import 'package:flutter/material.dart';

class UpCommingWidget extends StatelessWidget {
  const UpCommingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'UpComming Movies',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              //
              Text(
                'See All',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        //
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                for (int i = 1; i <= 4; i++)
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "images/pic$i.jpg",
                        width: 300,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
