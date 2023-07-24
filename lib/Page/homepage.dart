import 'package:flutter/material.dart';

import '../Widgets/CustomNavBar.dart';
import '../Widgets/NewMovieWidget.dart';
import '../Widgets/UpCommingWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        //
                        Text(
                          'What to Watch?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        //
                      ],
                    ),
                    //
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: const Image(
                          height: 60,
                          width: 60,
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://1.bp.blogspot.com/-bMFoDdc3D9A/YCgZntHJaeI/AAAAAAAAEoE/mFKeW_GA6j8GjZf71UPTb3aeKENGmFjwACLcBGAsYHQ/s558/Dasha%2BTaran.jpg')),
                    ),
                  ],
                ),
                //in column
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 50,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Container(
                            width: 300,
                            child: TextFormField(
                              style: const TextStyle(color: Colors.white),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search',
                                hintStyle: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //
                const SizedBox(
                  height: 20,
                ),
                //
                UpCommingWidget(),
                const SizedBox(
                  height: 20,
                ),
                //
                NewMovieWidget(),
              ],
            ),
          ),
        ),
      ),
      //
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
