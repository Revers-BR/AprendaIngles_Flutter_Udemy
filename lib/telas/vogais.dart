import 'package:flutter/material.dart';

class Vogais extends StatefulWidget {

  const Vogais({super.key});  

  @override
  State<Vogais> createState() => _Vogais();
}

class _Vogais extends State<Vogais> {

  @override
  Widget build ( BuildContext context ) {

    return const Center(
      
      child: Text("Vogais"),
    );
  }
}
