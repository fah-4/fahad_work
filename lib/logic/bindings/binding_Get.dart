import 'package:e_commerceapp/logic/controllers/get-controller.dart';
import 'package:get/get.dart';

class MyBinding extends Bindings{
  @override
  void dependencies() {
  Get.put(AppController());
  }
}