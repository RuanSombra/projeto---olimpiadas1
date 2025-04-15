import 'package:flutter/material.dart';
import 'package:olimpiadas_1/components/drawerUser.dart';
import 'package:olimpiadas_1/components/login.dart';
import 'package:olimpiadas_1/screens/login/page_register.dart';

class PageLogin extends StatelessWidget {
  const PageLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          DrawerUser(), //Draw
          Login(), // Container - Login
          Container(
            width: 530,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/images/image_france.png')),
                Text(
                  'Welcome to France!',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),

    );
  }
}
