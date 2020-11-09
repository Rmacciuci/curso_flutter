import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage>  {
  String name = "Ramiro Macciuci";

  int contador = 0;

  void increment() {

    print("Ramiro Macciui");

    contador = contador + 1;

    setState(() => {
      contador
    });
    // setState(() {
    //   contador++
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("¡Welcome back, $name!")
      ),
      body: Text("Numero, $contador"),
      floatingActionButton: FloatingActionButton(
        onPressed: () => increment(),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }
}