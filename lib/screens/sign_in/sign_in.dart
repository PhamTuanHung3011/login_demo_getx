import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/hero_image.dart';
import '../../widgets/hero_title.dart';
import 'localWidgets/sign_in_form.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: Container(
          width: Get.width ,
          height: Get.height ,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget> [
              // shows header title
              HeroTitle(
                title: 'Welcome!',
                subtitle: 'Enter email and password to login...',
              ),
              // shows image
              HeroImage(
                path: 'assets/loginHero.svg',
                sementicLabel: 'Login Hero',
              ),
              // shows textfields and buttons
              SignInForm(),
            ],
          ),
        ),
      ),
    );
  }
}
