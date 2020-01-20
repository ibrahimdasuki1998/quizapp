import 'package:flutter/material.dart';

class Pertanyaan extends StatelessWidget{
  final String textPertanyaan;
  Pertanyaan(this.textPertanyaan);

  Widget build(BuildContext context){
    return Text(textPertanyaan);
  }
}