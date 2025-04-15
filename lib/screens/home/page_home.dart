import 'package:flutter/material.dart';
import 'package:olimpiadas_1/components/diaries.dart';
import '../../components/drawerUser.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {

  String? tituloDiario;
  String? nomeUsuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          DrawerUser(), //Draw
          Container(
            width: 500,
            color: Colors.black12,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ListView(
                children: [
                  Text('Diaries', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                  SizedBox(height: 10,),
                  Diaries(),
                  SizedBox(height: 10,),
                  Diaries(),
                  SizedBox(height: 10,),
                  Diaries(),
                  SizedBox(height: 10,),
                  Diaries(),
                  SizedBox(height: 10,),
                  Diaries(),
                ],
              ),
            ),
          ),
          // Container 2
          Container(
            width: 530,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/images/image_france.png')),
                Text('Welcome to France!', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),)
              ],
            )
          ) //Container 3
        ],
      ),
    );
  }
}
