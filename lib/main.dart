import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var formatador = NumberFormat("#,##0.00", "pt_BR");
    var resultado = formatador.format(12.58);

    return Scaffold(
      appBar: AppBar(
        title: Text("Resultado: $resultado"),
      ),
    );
  }
}
