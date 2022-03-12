import 'package:e_commerceapp/logic/bindings/binding_Get.dart';
import 'package:e_commerceapp/view/screens/auth/forgetpass_screen.dart';
import 'package:e_commerceapp/view/screens/auth/login_screen.dart';
import 'package:e_commerceapp/view/screens/auth/signup_screen.dart';
import 'package:e_commerceapp/view/screens/welcome_screen.dart';
import 'package:get/get.dart';

class AppRouts{
  static const welcome =RoutsName.welcomeScreen;

  static final  routs = [
    GetPage(
        name: RoutsName.welcomeScreen,
        page: () => const WelcomeScreen() ),
    GetPage(
        name: RoutsName.loginScreen,
        page: () =>  LoginScreen(),binding: MyBinding() ),
    GetPage(
        name: RoutsName.signupScreen,
        page: () =>  SignupScreen(),binding: MyBinding() ),
    GetPage(
        name: RoutsName.forgetScreen,
        page: () =>  ForgetScreen(),binding: MyBinding() ),
  ];
}

class RoutsName extends AppRouts{
  static const welcomeScreen = '/welcomeScreen';
  static const loginScreen = "/loginScreen";
  static const signupScreen = "/signupScreen";
  static const forgetScreen = '/forgetScreen';

}