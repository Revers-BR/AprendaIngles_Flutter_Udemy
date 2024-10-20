import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Bichos extends StatefulWidget {

  const Bichos({super.key});

  @override
  State<Bichos> createState() => _Bichos();
}

class _Bichos extends State<Bichos> {

  final AudioPlayer audioPlayer = AudioPlayer();

  void executarSom( String nome) async {

    final path = "audios/$nome.mp3";

    await audioPlayer.setSourceAsset(path);

    await audioPlayer.play(AssetSource(path));
  }

  @override
  Widget build (BuildContext context) {
    
    return GridView.count(

      crossAxisCount: 2,
      childAspectRatio: MediaQuery.sizeOf(context).aspectRatio * 2 ,
      children: [
        
        GestureDetector(
          
          onTap: () => executarSom("cao"),
          child: Image.asset( "assets/imagens/cao.png"),
        ),
        GestureDetector(
          
          onTap: () => executarSom("gato"),
          child: Image.asset( "assets/imagens/gato.png"),
        ),
        GestureDetector(
          
          onTap: () => executarSom("leao"),
          child: Image.asset( "assets/imagens/leao.png"),
        ),
        GestureDetector(
          
          onTap: () => executarSom("macaco"),
          child: Image.asset( "assets/imagens/macaco.png"),
        ),
        GestureDetector(
          
          onTap: () => executarSom("ovelha"),
          child: Image.asset( "assets/imagens/ovelha.png"),
        ),
        GestureDetector(
          
          onTap: () => executarSom("vaca"),
          child: Image.asset( "assets/imagens/vaca.png"),
        ),
      ],
    );
  }
}
