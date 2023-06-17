import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/utils/route_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SplashScreenController extends GetxController{

  String imageName = 'group_circle.png';

  @override
  void onInit() {
    // FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance; // Change here
    // _firebaseMessaging.getToken().then((token){
    //   print("DEVICE TOKEN :::  $token");
    //   setDeviceToken(token!);
    // });
    goto();
    super.onInit();
  }
  setDeviceToken(String token)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('deviceToken', token);
  }

  goto()async{
    await Future.delayed(const Duration(seconds: 3));
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? intro = prefs.getString("intro_screen");
    var deviceToken = prefs.getString('deviceToken');
    print("introduction screen $intro");
    if(intro == "true"){
      SharedPreferences prfs = await SharedPreferences.getInstance();
      String? isUser = prfs.getString("isUser");
      String? email = prfs.getString("email");
      String? password = prfs.getString("password");
      if(isUser == "true"){
        print("==============");
        print("splash url https://moyenxpress.com/loginForWeb?email=$email&password=$password&device_token=$deviceToken}");
        //Get.offAllNamed(kWebViewScreen,arguments: 'https://moyenxpress.com/loginForWeb?email=${email}&password=${password}&device_token=$deviceToken');
        Get.to(kHomeScreen);
      }else{
        Get.offAllNamed(kLoginScreen);
      }
    }else{
      Get.offAllNamed(kNavBar1);
    }
  }

}
