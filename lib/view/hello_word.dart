import 'package:flutter/material.dart';

String? nome;

mostrarResultado(String resultado, BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(
            resultado,
            style: const TextStyle(fontSize: 30),
          ),
        );
      });
}

class HelloWord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Word"),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                label: Text("Nome:"), hintText: "Digite seu nome"),
            onChanged: (valorDigitado) {
              nome = valorDigitado;
            },
          ),
          ElevatedButton(
            child: Text("Ir"),
            onPressed: () {
              var mensagem = "Hello Word $nome";
              mostrarResultado(mensagem, context);
            },
          )
        ],
      ),
    );
  }
}
