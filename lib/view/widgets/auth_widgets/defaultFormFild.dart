

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget DefaultTextForm({

  InputBorder? border,
  required TextEditingController controller,
   String? Function(String?)? validate,
  required TextInputType keyboardType,
  required Widget prefixIcon,
   IconData? suffixIcon,
  Function()? showPassTap,
  bool textIsPassword = false,
  Color? cursorColor,
  String? hintText,
  TextStyle? textStyle,
  bool? filled





}) => TextFormField(
  obscureText: textIsPassword ,
validator: validate,
  cursorColor: cursorColor ,
  controller: controller ,
  keyboardType: keyboardType  ,


decoration: InputDecoration(

  fillColor: Colors.black12,
    filled: true ,
    hintText: hintText ,
    hintStyle: TextStyle(
      color: Colors.black45,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ) ,
    prefixIcon: prefixIcon,
    suffixIcon: suffixIcon != null ? IconButton(onPressed: showPassTap, icon: Icon(suffixIcon, color: Colors.black,)) : null,

enabledBorder: OutlineInputBorder(
  borderSide: BorderSide(color:Colors.white),
  borderRadius: BorderRadius.circular(10)

),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color:Colors.white),
      borderRadius: BorderRadius.circular(10)

  ),
  errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color:Colors.white),
      borderRadius: BorderRadius.circular(10)

  ),






),
);