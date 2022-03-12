import 'package:e_commerceapp/logic/controllers/get-controller.dart';
import 'package:e_commerceapp/routs/routs.dart';
import 'package:e_commerceapp/utils/my_string.dart';
import 'package:e_commerceapp/utils/theme.dart';
import 'package:e_commerceapp/view/widgets/auth_widgets/checkterms.dart';
import 'package:e_commerceapp/view/widgets/auth_widgets/defaultFormFild.dart';
import 'package:e_commerceapp/view/widgets/auth_widgets/defaultbutton.dart';
import 'package:e_commerceapp/view/widgets/text_style.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'container_under.dart';




class SignupScreen extends StatelessWidget {
   SignupScreen({Key? key}) : super(key: key);
  final  AppController controller = Get.find<AppController>();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
   var mailController = TextEditingController();
   var passController = TextEditingController();
   var nameController = TextEditingController();
   String? validateName(value){
     String name = nameController.value.text;
     if(name.isEmpty){
       value= "this form is required";
     }else if(name.length < 6){
       value = 'name is short';
     }else{
       value = null;
     }
     return value;
   }
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
              key: formKey,
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
                                text: "SIGN ",
                                color:mainColor,
                                fontWeight: FontWeight.w500),
                            styleDefaultText(
                                fontSize: 35,
                                text: "UP ",
                                fontWeight: FontWeight.w500)
                          ],
                        ),
                        SizedBox(height: 50,),
                        TextFormField(
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(  hintText: "User Name" ,prefixIcon:  Image.asset("assets/images/user.png"),),


                            keyboardType: TextInputType.text,
                            validator: (  value ) {
                              if(value!.isEmpty){
                                return "not empty";
                              }
                            },
                            cursorColor: Colors.black,

                            controller: nameController),
                        SizedBox(height: 20,),
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
                            controller: controller.mailController, ),
                        SizedBox(height: 20,),
                        GetBuilder<AppController>(builder: (controller){
                          return DefaultTextForm(

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
                              controller: controller.passController, );
                        }),
                        SizedBox(height: 40,),
                        CheckTerms(),
                        SizedBox(height: 25,),
                        MaterialButton(
                          onPressed: ()  {







                        },child: Text("SIGN UP"), ),
                        SizedBox(height: 40,),







                      ],
                    ),
                  ),
                ),
                containerBelow(
                  text1: 'Already have an Account?',
                  text2: 'Log in',
                    onPressed: () {
                      Get.toNamed(RoutsName.loginScreen);
                    }, ),
              ],
            ),
          ),
        ),

    );
  }
}


