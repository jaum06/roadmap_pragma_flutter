import 'package:flutter/material.dart';
import 'package:pragma/ui/pages/my_home_widget.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Tablero de 0 a play store',
      theme: ThemeData.dark(
      ),
      home: const MyHomePage(),
    );
  }
}
