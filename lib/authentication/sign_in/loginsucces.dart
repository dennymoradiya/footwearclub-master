import 'package:flutter/material.dart';
import 'package:footwearclub/buyer/view/screen/homescreen.dart';
import 'package:footwearclub/constants/constant.dart';
import 'package:footwearclub/splashscreen/splashdata.dart';
import 'package:get/get.dart';


class Login_succes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          Image.asset(
            "assets/images/success.png",
            height: SizeConfig.screenHeight * 0.4, //40%
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.08),
          Text(
            "Login Success",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: DefaultButton(
              text: "Back to home",
              press: () {
                Get.offAll(Home_Screen());
              },
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
