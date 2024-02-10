import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _resultado1 = false;
  bool _resultado2 = false;
  String _valor = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Checkbox using Flutter",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(32)),
          CheckboxListTile(
              title: Text(
                "Brasil é o meu País",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("O Brasil é melhor que Paraguai!"),
              activeColor: Colors.red,
              value: _resultado1,
              onChanged: (bool) {
                setState(() {
                  _resultado1 = true;
                });
              }),
          CheckboxListTile(
              title: Text(
                "Africa é o Continente Mãe",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              activeColor: Colors.red,
              subtitle: Text("Angola é o melhor País do Mundo."),
              value: _resultado2,
              onChanged: (bool) {
                setState(() {
                  _resultado2 = true;
                });
              }),
          ElevatedButton(
              onPressed: () {
                if (_resultado1 == false || _resultado2 == false) {
                  print("Selecione uma das Opções!");
                } else {
                  _valor = "Parabens";
                }
              },
              child: Text(
                "Confirmar",
                style: TextStyle(color: Colors.red),
              ))
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Text(_valor),
      ),
    );
  }
}
