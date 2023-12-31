import 'package:flutter/material.dart';

import '../app_constants.dart';
import '../config.dart';

class Mbutton extends StatefulWidget {
  final Function()? onPressed;
  final String? title;
  final Color color;
  final Color textColor;
  const Mbutton({
    super.key,
    this.onPressed,
    this.title,
    this.color = AppConstants.primaryColor,
    this.textColor = Colors.white,
  });

  @override
  State<Mbutton> createState() => _MbuttonState();
}

class _MbuttonState extends State<Mbutton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: fullWidth(context) * 0.6,
      height: fullHeight(context) * 0.06,
     
      child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: widget.color,
              elevation: 3,
              foregroundColor: widget.textColor,
              
              textStyle: TextStyle(
                 
                  fontSize: fontSize10(context) * 2.0)),
          child: Text(
            widget.title!,
          )),
    );
  }
}