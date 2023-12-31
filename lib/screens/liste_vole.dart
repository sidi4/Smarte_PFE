import 'package:flutter/material.dart';
import 'package:volsapp/app_constants.dart';
import 'package:volsapp/config.dart';
import 'package:volsapp/widget/my_button.dart';

import 'package:volsapp/widget/my_button3.dart';

class ListVol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 10, right: 40),
          child: Row(
            children: [
              RichText(
                  text: const TextSpan(
                text: "Resultats de Recherche",
                style: TextStyle(color: AppConstants.fersetColor, fontSize: 25),
              )),
            ],
          ),
        ),
         centerTitle: true,
            toolbarHeight: 150,
            backgroundColor: AppConstants.primaryColor,
           
      ),
      body: ListView(
        children: [
          FlightCard(
            airline: 'Airline 1',
            flightNumber: 'ABC123',
          ),
          SizedBox(height: fullHeight(context)*0.02),
          FlightCard(
            airline: 'Airline 2',
            flightNumber: 'XYZ789',
          ),
          // Ajoutez autant de FlightCards que nécessaire
        ],
      ),
    );
  }
}

class FlightCard extends StatelessWidget {
  final String airline;
  final String flightNumber;

  FlightCard({required this.airline, required this.flightNumber});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppConstants.fortiColor,
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Compagnie aérienne: $airline',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Numéro de vol: $flightNumber',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Color.fromARGB(255, 3, 81, 146))
                  
                  
                  ),
                  
                  
                  
                  onPressed: () {
                    // Logique du bouton
                    print('Bouton appuyé pour le vol $flightNumber');
                  },
                  child: Text('Choiser',style:TextStyle(color:AppConstants.fersetColor, ) ,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
