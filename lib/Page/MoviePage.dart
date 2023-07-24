import 'package:flutter/material.dart';
import 'package:movie_app_ui/Widgets/CustomNavBar.dart';

import '../Widgets/MoviePageButtons.dart';
import '../Widgets/RecommadWidget.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.7,
            child: Image.asset(
              "images/pic1.jpg",
              height: 300,
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              //
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.arrow_back,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.favorite_border,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              //
              Padding(
                padding: EdgeInsets.only(top: 130, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.8),
                            spreadRadius: 1,
                            blurRadius: 5,
                          )
                        ],
                      ),
                      child: ClipRRect(
                        child: Image.asset(
                          "images/pic1.jpg",
                          width: 170,
                          height: 220,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    //
                    Container(
                      width: 80,
                      height: 80,
                      margin: const EdgeInsets.only(right: 50),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            color: Colors.red,
                            blurRadius: 4,
                          )
                        ],
                      ),
                      child: const Icon(
                        Icons.play_arrow,
                        size: 50,
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ),
              ),
              //
              const SizedBox(
                height: 20,
              ),
              //
              MoviePageButtons(),
              //
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Thor: Love and Thunder',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //
                    Text(
                      'This is simple description of movie, you can write here the description ot the movie. This is simple description of movie, you can write here the description ot the movie.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              //
              const SizedBox(height: 19),
              RecommandWidget(),
            ],
          ),
        ],
      ),
      //
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
