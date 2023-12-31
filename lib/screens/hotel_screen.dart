import 'package:flutter/material.dart';
import 'package:volsapp/config.dart';

class Hotel extends StatelessWidget {
  const Hotel({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Text("List d'hotels",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: fontSize10(context) * 2.0))),
      ),
    );
  }
}
