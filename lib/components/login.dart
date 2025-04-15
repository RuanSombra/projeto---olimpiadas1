import 'package:flutter/material.dart';
import 'package:olimpiadas_1/screens/login/page_register.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return           Container(
      width: 500,
      color: Colors.black12,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.account_circle, size: 150),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => PageRegister()));
            },
            child: Text(
              'Join us now',
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              side: BorderSide(color: Colors.black, width: 2),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'to discover more sights of France',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
