import 'package:flutter/material.dart';
import 'package:movie_app_ui/Widgets/CustomNavBar.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                //
                const SizedBox(
                  height: 30,
                ),
                //text
                const Text(
                  "Dicover",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                //
                const SizedBox(
                  height: 20,
                ),
                //
                for (int i = 1; i <= 4; i++)
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'images/pic$i.jpg',
                            fit: BoxFit.cover,
                            width: 120,
                            height: 80,
                          ),
                        ),
                      ),
                      //
                      SizedBox(
                        width: 10,
                      ),
                      //
                      Text(
                        "Category",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                      //
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_ios),
                        color: Colors.white,
                      )
                    ],
                  ),
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
