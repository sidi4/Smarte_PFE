import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:volsapp/app_constants.dart';
import 'package:volsapp/config.dart';
import 'package:volsapp/screens/liste_vole.dart';
import 'package:volsapp/widget/my_button.dart';
import 'package:volsapp/widget/my_button2.dart';

class VolsSecreen extends StatelessWidget {
  const VolsSecreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CardeSecreen(),
          SizedBox(
            height: 16.0,
          ),
          MButton(
            onPressed: () async{
              Get.to(ListVol());
            },
            title: "Recherche",
          )
        ],
      ),
    );
  }
}

class CardeSecreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        margin: EdgeInsets.all(32),
        elevation: 5.0,
        color: AppConstants.primaryColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(width: 16.0),
                  Expanded(
                      child: TextFormField(
                    decoration: InputDecoration(
                     
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: AppConstants.fersetColor)),
                      labelText: "A partire de ",
                      labelStyle: TextStyle(
                          color: AppConstants.fersetColor,
                          fontSize: fontSize10(context) * 1.2),
                      hintStyle: TextStyle(
                          color: AppConstants.fersetColor,
                          fontSize: fontSize10(context) * 0.5),
                    ),
                  )),
                  SizedBox(
                    width: 16.0,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppConstants.fersetColor)),
                          labelText: "A",
                          labelStyle: TextStyle(
                              color: AppConstants.fersetColor,
                              fontSize: fontSize10(context) * 1.2)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Row(
                children: [
                  SizedBox(width: 16.0),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppConstants.fersetColor)),
                          labelText: "Date",
                          labelStyle: TextStyle(
                              color: AppConstants.fersetColor,
                              fontSize: fontSize10(context) * 1.2)),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppConstants.fersetColor)),
                          labelText: "Type",
                          labelStyle: TextStyle(
                              color: AppConstants.fersetColor,
                              fontSize: fontSize10(context) * 1.2)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Row(
                children: [
                  SizedBox(width: 16.0),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppConstants.fersetColor)),
                          labelText: "Passagers",
                          labelStyle: TextStyle(
                              color: AppConstants.fersetColor,
                              fontSize: fontSize10(context) * 1.2)),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppConstants.fersetColor)),
                          labelText: "Classe",
                          labelStyle: TextStyle(
                              color: AppConstants.fersetColor,
                              fontSize: fontSize10(context) * 1.2)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40.0),
            ],
          ),
        ),
      ),
    );
  }
}
