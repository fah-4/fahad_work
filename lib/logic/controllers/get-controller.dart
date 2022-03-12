import 'package:flutter/material.dart';
import 'package:get/get.dart';

 class AppController extends GetxController{
  bool textIsPassword = true;
  var mailController = TextEditingController();
  var passController = TextEditingController();
  var nameController = TextEditingController();
  bool checkEmpty = false;
void suffixChange(){

  textIsPassword=!textIsPassword;
  update();
}

void checkOr(){
  checkEmpty = !checkEmpty;
  update();
 }


}