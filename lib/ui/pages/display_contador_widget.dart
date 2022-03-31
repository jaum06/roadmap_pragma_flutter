import 'package:flutter/material.dart';

class DisplayContadorWidget extends StatefulWidget {
  const DisplayContadorWidget(
      {Key? key, required this.funcion})
      : super(key: key);

  final int contador;
  final VoidCallback funcion;

  @override
  State<DisplayContadorWidget> createState() => _DisplayContadorWidgetState();
}

class _DisplayContadorWidgetState extends State<DisplayContadorWidget> {
  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);
    print('Reconstruyendo contador display');
    return MaterialButton(
      onPressed: () {
        widget.funcion;
        setState(() {});
      },
      child: Text(
        '$contador',
        style: tema.textTheme.headline4,
      ),
    );
  }
}
