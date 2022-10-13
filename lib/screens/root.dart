import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_demo_getx/screens/sign_in/sign_in.dart';

import '../config.dart';
import '../controller/auth_controller.dart';
import 'home/home.dart';

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      // resizeToAvoidBottomInset: false,
      body: GetBuilder<AuthController>(
        builder: (_) {
          return SafeArea(
            child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Config.screenWidth! * 0.001),
                child: _.isSignedIn.value ? const Home() : const SignIn()),
          );
        },
      ),
    );
  }
}
