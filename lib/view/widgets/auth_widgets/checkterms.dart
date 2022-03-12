import 'package:e_commerceapp/logic/controllers/get-controller.dart';
import 'package:e_commerceapp/utils/theme.dart';
import 'package:e_commerceapp/view/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckTerms extends StatelessWidget {
   CheckTerms({Key? key}) : super(key: key);
  final  AppController controller = Get.find<AppController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GetBuilder<AppController>(builder: (controller){
          return InkWell(
              onTap: (){
                controller.checkOr();
              },
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: controller.checkEmpty ? Image.asset("assets/images/check.png") : Container(),
              ));
        }),

        SizedBox(width: 8,),
        styleDefaultText(text: 'I accept', fontSize: 15),
        TextButton(
            onPressed: (){},


            child: styleDefaultText(
              color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.normal,
                text: "terms & conditions",
              underLine: TextDecoration.underline

            ))
        
        
      ],
    );
  }
}
