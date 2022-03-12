import 'package:e_commerceapp/routs/routs.dart';
import 'package:e_commerceapp/view/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/images/background.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.1),
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 190,
                  child:
                  styleDefaultText(
                      color: Colors.white ,
                      fontSize: 35 ,
                      text: "Welcome",
                      fontWeight: FontWeight.bold ),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(8)),
                ),
                Container(

                  margin: EdgeInsets.only(top: 5),
                  alignment: Alignment.center,
                  height: 60,
                  width: 230,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                    styleDefaultText(
                        color: Color(0xff00BE84) ,
                        fontSize: 35 ,
                        text: "Asroo",
                        fontWeight: FontWeight.bold, ),
                        SizedBox(width: 4,),
                        styleDefaultText(
                          color: Colors.white ,
                          fontSize: 35 ,
                          text: "shop",
                          fontWeight: FontWeight.bold, ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(8)),
                ),
                SizedBox(height: 200,),
                MaterialButton(
                  minWidth: 130,
                  height: 36,

                  shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(8)
                  ),
                  color: Color(0xff00BE84),
                  onPressed:(){
                    Get.offNamed( RoutsName.loginScreen );
                  } ,
                  child:styleDefaultText(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    text: "Get Start") ,),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    styleDefaultText(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      text: "Don\'t have an Account? "),
                    TextButton(onPressed: (){
                      Get.offNamed(RoutsName.signupScreen);
                    }, child: styleDefaultText(
                      color: Colors.white,
                      fontSize: 15,
                      text: "Sign Up",
                      underLine: TextDecoration.underline


                    )),


                  ],
                )

              ],
            ),
          )
        ],
      )),
    );
  }
}
