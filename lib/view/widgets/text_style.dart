import 'package:flutter/material.dart';



Widget styleDefaultText({
   Color? color,
  required double fontSize ,
   FontWeight? fontWeight,
  required String text,
  TextDecoration? underLine,
  TextAlign? textAlign,
}) =>  Text(

   text,
  style: TextStyle(

    color: color,
    fontSize: fontSize,
    fontWeight: fontWeight,
    decoration: underLine


  ),
  textAlign: textAlign ,
);








