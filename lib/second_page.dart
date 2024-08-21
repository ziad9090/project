import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'datafile/data.dart';

import 'loginscreen.dart';

class definepage extends StatefulWidget {
  const definepage({super.key});

  @override
  State<definepage> createState() => _definepageState();
}

class _definepageState extends State<definepage> {
  final PageController _pageController = PageController(); // Create a single controller
  late List<definemodel> definemodellist;

  @override
  void initState() {
    super.initState();
    loaddata();
  }

  loaddata() {
    definemodellist = [
      const definemodel(image: "assets/imgs/Group 285.png", text: "Start Journey With Nike", desc: "Smart, Gorgeous & Fashionable Collection", ),
      const definemodel(image: "assets/imgs/Group 338.png", text: "Follow Latest Style Shoes", desc: "There Are Many Beautiful And Attractive Plants To Your Room ", ),
      const definemodel(image: "assets/imgs/Group 285.png", text: "", desc: "", ) ,
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(bottom: 50,  top: 50 ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController, // Use the same controller
                itemCount: definemodellist.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.all(30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(definemodellist[index].image),
                        Text(
                          definemodellist[index].text,
                          style: const TextStyle(
                            fontSize: 25,
                            fontFamily: "Airbnb Cereal App",
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          definemodellist[index].desc,
                          style: const TextStyle(
                            fontSize: 12,
                            fontFamily: "Airbnb Cereal App",
                            fontWeight: FontWeight.w400,
                            height: 2,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            Row(

              children: [
                Container(
                  margin: EdgeInsets.only(left: 20 ),
                  child: SmoothPageIndicator(
                    controller: _pageController, // Use the same controller
                    count: definemodellist.length,
                    effect: ExpandingDotsEffect(
                      activeDotColor: Colors.blueAccent,
                      dotHeight: 7,
                      dotColor: Colors.blueGrey,

                    ), // Your preferred effect
                    onDotClicked: (index) {},
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 200,
                  height: 54,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => loginpage()),
                      );
                    },
                    child: const Text(
                      "Get Started",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            )


          ],
        ),
      ),
    );
  }
}