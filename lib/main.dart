import 'package:e_commerceapp/routs/routs.dart';
import 'package:e_commerceapp/view/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( GetMaterialApp(
    title: "Asroo Shop",
    debugShowCheckedModeBanner: false,

    initialRoute: AppRouts.welcome,
    getPages: AppRouts.routs,
    theme: ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black
        )


      )
    ),
  ));
}
