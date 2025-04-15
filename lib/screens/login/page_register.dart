import 'package:flutter/material.dart';
import 'package:olimpiadas_1/components/drawerUser.dart';
import 'package:olimpiadas_1/components/login.dart';

class PageRegister extends StatelessWidget {
  const PageRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          DrawerUser(), //Draw
          Login(),
          Container(
            width: 530,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign in/up',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Form(
                  child: Column(
                    children: [
                      Container(
                        width: 400,
                        padding: EdgeInsets.all(10),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Your Email Address',
                            contentPadding: EdgeInsets.all(16),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 2),
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      Container(
                        width: 400,
                        padding: EdgeInsets.all(10),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Your Password',
                            contentPadding: EdgeInsets.all(16),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 2),
                            ),
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PageRegister(),
                            ),
                          );
                        },
                        child: Text(
                          'Sign in/up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black26,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          side: BorderSide(color: Colors.black, width: 2),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ), //Container 3
        ],
      ),
    );
  }
}
