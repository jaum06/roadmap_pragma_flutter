import 'package:flutter/material.dart';

import '../../blocs/bloc_central.dart';
import 'display_contador_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    print('reconstruyendo');
    final String texto = 'Taller de 0 a Play Store - $contador';

    final tema = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(texto),
      ),
      body: Center(
        child: Container(
          color: tema.primaryColor,
          width: 200.0,
          height: 200.0,
          child: Center(
            child: Container(
              alignment: Alignment.center,
              width: 150.0,
              height: 150.0,
              color: tema.backgroundColor,
              child: const DisplayContadorWidget(funcion: incrementar),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            incrementar();
            print(contador);
          });
        },
        child: const Text('+'),
      ),
    );
  }
}
