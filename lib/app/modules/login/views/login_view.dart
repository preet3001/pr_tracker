import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pr_tracker/constants/app_colors.dart';
import 'package:pr_tracker/constants/text_styles.dart';
import 'package:sizer/sizer.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login'.tr),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Spacer(),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor.withOpacity(0.6)
              ),
              child: Padding(
                padding: EdgeInsets.all(20.sp),
                child: Icon(Icons.scale,size: 70.sp,),
              ),
            ),
            Spacer(),
            ElevatedButton(onPressed: (){}, child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset("assets/icons/google_logo.png",height: 4.h,),
                Text('loginWithGoogle'.tr,style: black12BoldStyle,),
              ],
            )),
            Spacer(flex: 3,)
          ],
        ),
      ),
    );
  }
}
