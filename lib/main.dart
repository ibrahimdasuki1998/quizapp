import 'package:flutter/material.dart';
import 'package:quizzapp1/pertanyaan.dart';

//void main(){
//  runApp(MyApp());
//}
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var pertanyaanIndex = 0;

  void klikJawaban() {
    print('Klik Jawaban A Soal ke');
    print(pertanyaanIndex);
    pertanyaanIndex++;
  }

  Widget build(BuildContext context) {
    var pertanyaan = [
      'Siapakah Presiden Pertama di Republik Indonesia ?',
      'Kapan Indonesia Merdeka ?',
      'Siapakah Presiden Pertama di Republik Indonesia ?',
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Pertama'),
      ),
      body: Column(
        children: <Widget>[
          Pertanyaan(pertanyaan[pertanyaanIndex]),         
          RaisedButton(
            onPressed: klikJawaban,
            child: Text('Jawaban A'),
          ),
          RaisedButton(
            onPressed: () {
              print('klik Jawaban B');
            },
            child: Text('Jawaban B'),
          ),
          RaisedButton(
            onPressed: () => print('klik Jawaban C'),
            child: Text('Jawaban C'),
          )
        ],
      ),
    ));
  }
}
