import 'dart:async';

import 'package:get/get.dart';
import 'package:pr_tracker/app/routes/app_pages.dart';

class SplashController extends GetxController {
  late Timer timer ;
  final count = 0.obs;
  @override
  void onInit() {
    timer = Timer(Duration(seconds: 3), isLogin);
    super.onInit();
  }

  isLogin()async{
    if(true){//check for token
      Get.offNamed(Routes.LOGIN);
    }
    else{
      //auto login
    }
  }

  @override
  void onClose() {
    timer.cancel();
    super.onClose();
  }
  
}
