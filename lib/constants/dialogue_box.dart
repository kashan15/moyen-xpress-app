import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../utils/route_utils.dart';


successDialog(){
  Get.defaultDialog(
    title: '',
    content:
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              height: Get.height*0.13,
              width: Get.height*0.12,
              child: Image.asset("assets/images/success.png")
          ),
          const SizedBox(height: 20),
          const Text("Congratulations! You have won the registration bonus",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20)),
          const SizedBox(height: 15),
          const Text("Please verify and log in to your account",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16)),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: (){
                  Get.offAllNamed(kLoginScreen);
                },
                child:const Text("Ok",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16)),
              ),
            ],
          )
        ],
      ),
    ),
  );
}