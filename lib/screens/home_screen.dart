// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:volsapp/app_constants.dart';
import 'package:volsapp/config.dart';

import 'package:volsapp/screens/flight_screen.dart';
import 'package:volsapp/screens/hotel_screen.dart';
import 'dart:math';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  RichText(
                      text: const TextSpan(
                    text: "Choisissez",
                    style: TextStyle(
                        color: AppConstants.fersetColor, fontSize: 25),
                    children: <TextSpan>[
                      TextSpan(
                          text: '  Voter voyage',
                          style: TextStyle(
                              color: AppConstants.fersetColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 25)),
                    ],
                  )),
                ],
               
              ),
            ),
            centerTitle: true,
            toolbarHeight: 150,
            backgroundColor: AppConstants.primaryColor,
          ),
          body: Column(
            children: [
              SizedBox(
                height: fullHeight(context) * 0.06,
              ),
              TabBar(tabs: [
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Transform.rotate(
                        angle: 45 * pi / 180,
                        child: Icon(Icons.airplanemode_active_rounded,
                            size: 30, color: Colors.blueGrey),
                      ),
                      // Icon(Icons.flight,color:Colors.grey ,),
                      SizedBox(
                          width: 8), // Adjust the spacing between icon and text
                      Text('Vol',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: fontSize10(context) * 1.2)),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.hotel_outlined),
                      SizedBox(width: 8),
                      Text(
                        'Hotel',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
              Expanded(
                  child: TabBarView(children: [
                VolsSecreen(),
                Hotel(),
              ]))
            ],
          ),
        ));
  }
}

class Item {
  String title;
  IconData icon;
  Item(this.title, this.icon);
}
