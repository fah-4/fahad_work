import 'package:e_commerceapp/logic/controllers/get-controller.dart';
import 'package:e_commerceapp/routs/routs.dart';
import 'package:e_commerceapp/utils/my_string.dart';
import 'package:e_commerceapp/utils/theme.dart';
import 'package:e_commerceapp/view/screens/auth/container_under.dart';
import 'package:e_commerceapp/view/widgets/auth_widgets/checkterms.dart';
import 'package:e_commerceapp/view/widgets/auth_widgets/defaultFormFild.dart';
import 'package:e_commerceapp/view/widgets/auth_widgets/defaultbutton.dart';
import 'package:e_commerceapp/view/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';




class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final  AppController controller = Get.find<AppController>();
  final GlobalKey<FormState> formKeyLog = GlobalKey<FormState>();
  var mailControllerLog = TextEditingController();
  var passControllerLog = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white
        ),

      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            key: formKeyLog,
            children: [
              Container(
                width: double.infinity,
                height:  MediaQuery.of(context).size.height/1.3,

                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(


                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          styleDefaultText(
                              fontSize: 35,
                              text: "LOG ",
                              color:mainColor,
                              fontWeight: FontWeight.w500),
                          styleDefaultText(
                              fontSize: 35,
                              text: "IN ",
                              fontWeight: FontWeight.w500)
                        ],
                      ),
                      SizedBox(height: 50,),

                      DefaultTextForm(

                        hintText: "Email " ,
                        keyboardType: TextInputType.emailAddress,
                        validate: (String? value ) {
                          if(value== null ||!RegExp(validationEmail).hasMatch(value) ){

                            return "Email must not be empty!";

                          } return null;
                        },
                        cursorColor: Colors.black,
                        prefixIcon:  Image.asset("assets/images/email.png"),
                        controller: mailControllerLog, ),
                      SizedBox(height: 20,),

                         DefaultTextForm(

                          hintText: "Password" ,
                          keyboardType: TextInputType.visiblePassword,
                          validate: (String? value ) {
                            if(value == null|| value.toString().length < 6){

                              return "Password must not be empty!";

                            } return null;
                          },

                          cursorColor: Colors.black,
                          textIsPassword: controller.textIsPassword,
                          suffixIcon: controller.textIsPassword ? Icons.visibility : Icons.visibility_off,
                          showPassTap: (){
                            controller.suffixChange();
                          },


                          prefixIcon:  Image.asset("assets/images/lock.png"),
                          controller: passControllerLog, ),


                          Align(
                            alignment: Alignment.centerRight,
                            child:
                             TextButton(
                                  onPressed: (){
                                    Get.toNamed(RoutsName.forgetScreen);
                                  },


                                  child: styleDefaultText(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    text: "Forget Password?",


                                  )),

                          ),




                      SizedBox(height: 50,),
                      defaultButton(onPressed: (){
                        if(formKeyLog.currentState!.validate()){
                      print(mailControllerLog.text);
                      print(passControllerLog.text);

                        } else{
                          return;
                        }
                      },text: "LOG IN", ),
                      SizedBox(height: 15,),

                      Center(child: styleDefaultText(fontSize: 25, text: "OR",fontWeight: FontWeight.w500)),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(onPressed: (){}, icon: Image.asset("assets/images/facebook.png"),padding: EdgeInsets.only(left: 7),),
                          IconButton(onPressed: (){}, icon: Image.asset("assets/images/google.png"),padding: EdgeInsets.only(right: 7),),
                        ],
                      ),

                      SizedBox(height: 50,),








                    ],
                  ),
                ),
              ),
              containerBelow(
                text1: 'Don\'t have an Account?',
                text2: 'Sign up',
                onPressed: () {
                  Get.toNamed(RoutsName.signupScreen);
                }, ),
            ],
          ),
        ),
      ),

    );
  }
}
