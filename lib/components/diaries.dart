import 'package:flutter/material.dart';
import 'package:olimpiadas_1/screens/home/page_home.dart';
import 'package:olimpiadas_1/screens/login/page_login.dart';

class Diaries extends StatefulWidget {
  const Diaries({super.key});

  @override
  State<Diaries> createState() => _DiariesState();
}

class _DiariesState extends State<Diaries> {

  String? tituloDiario;
  String? nomeUsuario;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (contexto) => PageLogin()));
      },
      child: Stack(
        children: [
          Container(
              width: 200,
              height: 305,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 170,
                      height: 240,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(tituloDiario = "Nice trip in Paris", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    Text(nomeUsuario = "Publish Username", style: TextStyle(fontSize: 12))
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}
