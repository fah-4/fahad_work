

import 'package:e_commerceapp/routs/routs.dart';
import 'package:e_commerceapp/utils/theme.dart';
import 'package:e_commerceapp/view/widgets/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget containerBelow({

  required String text1,
  required String text2,
  Color? color ,
  required Function() onPressed,

}) => SingleChildScrollView(
  child:   Container(



  width: double.infinity,

  height: 100,

  decoration: BoxDecoration(

  color: mainColor,

  borderRadius: BorderRadius.only(

  topLeft: Radius.circular(20),

  topRight: Radius.circular(20))

  ),

  child: Row(

    mainAxisAlignment: MainAxisAlignment.center,

  children: [

  styleDefaultText(

  fontSize: 18 ,

  color: Colors.white ,

  text: text1

  ),

    TextButton(

        onPressed: onPressed,

        child: styleDefaultText(

            color: Colors.white,

            fontSize: 18,

            fontWeight: FontWeight.bold,

            text: text2,

            underLine: TextDecoration.underline



        ))





  ],

  ),

  ),
);