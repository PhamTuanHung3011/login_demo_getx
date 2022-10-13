import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_demo_getx/screens/manager_screen/manager_screen.dart';

import '../../config.dart';
import '../../controller/auth_controller.dart';
import '../../widgets/hero_title.dart';
import '../../widgets/rounded_elevated_button.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _authController = Get.find<AuthController>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Cào Cào'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          HeroTitle(
              title:
                  'Hello ${_authController.displayName.toString().capitalizeString()}!',
              subtitle: 'Let\'s being...'),
          Expanded(flex: 8, child: Container()),

        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 80,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: CircleAvatar(
                              child: Image.network(
                                  'https://daohieu.com/wp-content/uploads/2020/05/meo-con.jpg', fit: BoxFit.fill,),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(_authController.displayName.toString()),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Manager Product'),
              onTap: () {
                Get.to(() => ManagerProductScreen());
              },
            ),
            Container(
              width: 100,
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 8),
              child: TextButton(
                onPressed: () {
                  _authController.signout();
                },
               child: Text('Sign Out'),),
            ),
          ],
        ),
      ),
    );
  }
}
