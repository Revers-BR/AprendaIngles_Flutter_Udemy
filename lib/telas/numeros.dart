import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Numeros extends StatefulWidget {

  const Numeros({super.key});

  @override
  State<Numeros> createState() => _Numeros();
}

class _Numeros extends State<Numeros> {

  final AudioPlayer audioPlayer = AudioPlayer();

  void executarSom( String nome) async {

    final path = "audios/$nome.mp3";

    await audioPlayer.setSourceAsset(path);

    await audioPlayer.play(AssetSource(path));
  }

  @override
  Widget build (BuildContext context ) {

    return GridView.count(

      crossAxisCount: 2,
      childAspectRatio: MediaQuery.sizeOf(context).aspectRatio * 2 ,
      children: [
        
        GestureDetector(
          
          onTap: () => executarSom("1"),
          child: Image.asset( "assets/imagens/1.png"),
        ),
        GestureDetector(
          
          onTap: () => executarSom("2"),
          child: Image.asset( "assets/imagens/2.png"),
        ),
        GestureDetector(
          
          onTap: () => executarSom("3"),
          child: Image.asset( "assets/imagens/3.png"),
        ),
        GestureDetector(
          
          onTap: () => executarSom("4"),
          child: Image.asset( "assets/imagens/4.png"),
        ),
        GestureDetector(
          
          onTap: () => executarSom("5"),
          child: Image.asset( "assets/imagens/5.png"),
        ),
        GestureDetector(
          
          onTap: () => executarSom("6"),
          child: Image.asset( "assets/imagens/6.png"),
        ),
      ],
    );
  }
}
