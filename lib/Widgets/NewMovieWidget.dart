import 'package:flutter/material.dart';

class NewMovieWidget extends StatelessWidget {
  const NewMovieWidget({super.key});

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
                'New Movie',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                'See All',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        //
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 1; i <= 4; i++)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                        width: 180,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[900],
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue,
                              spreadRadius: 2,
                              blurRadius: 6,
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              child: Image.asset(
                                "images/pic$i.jpg",
                                width: double.maxFinite,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                'Movie title Here',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            //
                            Text(
                              'Action/Adventure',
                              style: TextStyle(color: Colors.white),
                            ),
                            //
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                ),
                                //
                                Text(
                                  '8.5',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ],
                        )),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
