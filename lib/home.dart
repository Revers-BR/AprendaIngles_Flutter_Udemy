import 'package:aprenda_ingles/telas/bichos.dart';
import 'package:aprenda_ingles/telas/numeros.dart';
import 'package:aprenda_ingles/telas/vogais.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {

  @override
  Widget build (BuildContext context){
    
    return DefaultTabController(
      length: 3, 
      
      child: Scaffold(
      
        appBar: AppBar(
          backgroundColor: const Color(0xff795548) ,
          foregroundColor: Colors.white,
          title: const Text(
            "Aprenda Ingles",
          ),
          bottom: const TabBar(
            labelColor: Colors.white,
            indicatorWeight: 4,
            tabs: [
              Tab(text: "Bichos"),
              Tab(text: "Numeros"),
              Tab(text: "Vogais"),
            ]
          ),
        ),

        body: const TabBarView(
          children: [
            Bichos(),
            Numeros(),
            Vogais()
          ],
        ),
      )
    );
  }
}
