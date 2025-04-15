import 'package:flutter/material.dart';
import 'package:olimpiadas_1/screens/home/page_home.dart';
import 'package:olimpiadas_1/screens/login/page_login.dart';
import 'package:olimpiadas_1/screens/travel/page_travel.dart';

class DrawerUser extends StatefulWidget {
  const DrawerUser({super.key});

  @override
  State<DrawerUser> createState() => _DrawerUserState();
}

class _DrawerUserState extends State<DrawerUser> {
  int _selectedItem = 0;

  void _opcaoItem(int index) {
    setState(() {
      _selectedItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white70,
      width: 250,
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/icon_france.png'),
                  radius: 35,
                ),
                SizedBox(width: 20),
                Text(
                  'My France',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ],
            ),
          ),
          Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.home,
                  size: 40,
                  weight: 700,
                  color: Colors.black,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                tileColor: _selectedItem == 0 ? Colors.grey[300] : null,
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PageHome()));
                  });
                  _opcaoItem(0);
                }
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(
                  Icons.map_outlined,
                  size: 40,
                  weight: 700,
                  color: Colors.black,
                ),
                title: Text(
                  'Travel',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                tileColor: _selectedItem == 1 ? Colors.grey[300] : null,
                onTap: (){
                  _opcaoItem(1);
                }
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(
                  Icons.account_circle_outlined,
                  size: 40,
                  weight: 700,
                  color: Colors.black,
                ),
                title: Text(
                  'Account',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                tileColor: _selectedItem == 2 ? Colors.grey[300] : null,
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PageLogin()));
                  });
                  _opcaoItem(2);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
