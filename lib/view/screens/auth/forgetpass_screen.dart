import 'package:e_commerceapp/logic/controllers/get-controller.dart';
import 'package:e_commerceapp/utils/my_string.dart';
import 'package:e_commerceapp/utils/theme.dart';
import 'package:e_commerceapp/view/widgets/auth_widgets/defaultFormFild.dart';
import 'package:e_commerceapp/view/widgets/auth_widgets/defaultbutton.dart';
import 'package:e_commerceapp/view/widgets/text_style.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetScreen extends StatelessWidget {
  final  AppController controller = Get.find<AppController>();

  ForgetScreen({Key? key}) : super(key: key);
  var mailControllerLog = TextEditingController();
   final GlobalKey<FormState> formKeyLog = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Forget Password",style: TextStyle(color: mainColor),),


      ),

      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Form(
              key:formKeyLog ,
              child: Column(

                children: [
                  SizedBox(height: 20,),
                  styleDefaultText(
                      fontSize: 15,
                      text: "if you want to recover your account, then please provide your email id below",
                      textAlign: TextAlign.center),
                  SizedBox(height: 40,),
                  Image.asset("assets/images/forgetpass copy.png",height: 250,width: 250,),
                  SizedBox(height: 40,),
                  DefaultTextForm(

                    hintText: "Email " ,
                    keyboardType: TextInputType.emailAddress,
                    validate: (String? value ) {
                      if(value== null  ){

                        return "Email must not be empty!";

                      } else if(!RegExp(validationEmail).hasMatch(value)){
                        return 'Email must have specific letters ';
                      }
                    },
                    cursorColor: Colors.black,
                    prefixIcon:  Image.asset("assets/images/email.png"),
                    controller: mailControllerLog, ),
                  SizedBox(height: 25,),
                  defaultButton(onPressed: () async {
                    try {
                      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                          email: "barry111.allen@example.com",
                          password: "SuperSecretPassword111"
                      );
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        print('The password provided is too weak.');
                      } else if (e.code == 'email-already-in-use') {
                        print('The account already exists for that email.');
                      }
                    } catch (e) {
                      print(e);
                    }
                    // if(formKeyLog.currentState!.validate()){
                    //   print(mailControllerLog.text);
                    //
                    //
                    // } else{
                    //   return;
                    // }
                  },text: "SEND", ),



                ],
              ),
            ),
          )),

    );
  }
}
