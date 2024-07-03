import 'dart:math';

import 'package:appmania/utils/all_product_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:readmore/readmore.dart';

class DetailsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DetailsPage();
  }
}

class _DetailsPage extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      backgroundColor: Color(0xff8EDF79),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
           Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 32,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Icon(
              Icons.favorite_border_outlined,
              color: Colors.white,
              size: 25,
            ),
          )
        ],
        backgroundColor: Color(0xff63D346),
      ),
      body: Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xff63D346),
          Color(0xff8EDF79),
          Color(0xff8EDF79)
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.all(30),
                height: MediaQuery.of(context).size.height / 1.4,
                width: double.infinity,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 150,
                    ),
                    Text(
                      "Avocada salad",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ReadMoreText(
                      'Flutter is Google’s mobilemobilemobilemobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                      trimMode: TrimMode.Line,
                      trimLines: 3,
                      colorClickableText: Colors.green,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: 'Show less',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                      moreStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("4.5")
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Text("🔥 100 kcal")
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.watch_later,
                              color: Colors.amber,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("5-10 min")
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Ingradients",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 50,
                          height: 50,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text("🍑"),
                          /*...data['ingradients'].map((Map<String, dynamic> e) {
                          return
                          ); })*/
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                ProductData.cartData.add(data);
                ProductData.covertUniqueData();
              },
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    height: 60,
                    margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    alignment: Alignment.center,
                    child: Text(
                      "Add To Cart",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    )),
              ),
            ),
            Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 250,
                  width: 250,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://www.eatingbirdfood.com/wp-content/uploads/2021/03/avocado-salad-hero.jpg"),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xff8EDF79),
                            spreadRadius: 2,
                            blurRadius: 20)
                      ]),
                )),
          ],
        ),
      ),
    );
  }
}
