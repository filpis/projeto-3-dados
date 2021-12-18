import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal[700],
        appBar: AppBar(
          title: Center(child: Text('Dados'),
        ),
          backgroundColor: Colors.teal[900],
        ),
        body: Dados(),
      ),
    ),
  );
}

class Dados extends StatefulWidget {
  @override
  _DadosState createState() => _DadosState();
}

class _DadosState extends State<Dados> {
  int numeroDadoEsquerda = 1;
  int numeroDadoDireita = 1;

  void sorteiaNumero() {
    setState(() {
      numeroDadoEsquerda = Random().nextInt(6) + 1;
      numeroDadoDireita = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  sorteiaNumero();
                },
                child: Image.asset('imagens/dado$numeroDadoEsquerda.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    sorteiaNumero();
                  },
                  child: Image.asset('imagens/dado$numeroDadoDireita.png')),
            ),
          ),
        ],
      ),
    );
  }
}
