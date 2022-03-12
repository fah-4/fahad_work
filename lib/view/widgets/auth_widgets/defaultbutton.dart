





import 'package:e_commerceapp/utils/theme.dart';
import 'package:e_commerceapp/view/widgets/text_style.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  BorderRadiusGeometry? borderRadius ,
  double? width,
  double? height,
  Color? color,
  required void Function() onPressed,
 required String text,


}) => MaterialButton(
minWidth: double.infinity,
height: 50,

shape: RoundedRectangleBorder(

borderRadius: BorderRadius.circular(8)
),
color: mainColor,
onPressed:onPressed,

child:styleDefaultText(
color: Colors.white,
fontSize: 18,
fontWeight: FontWeight.normal,
text: text) );