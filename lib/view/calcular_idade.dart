import 'package:flutter/material.dart';

class CalcularIdade extends StatelessWidget {
  String? nome;
  int? anoNascimento;

  mostrarResultado(String resultado, BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Text(
              resultado,
              style: const TextStyle(fontSize: 35),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calcular Idade"),
      ),
      body: Column(
        children: [
          TextField(
              decoration: InputDecoration(
                  label: Text("Nome:"), hintText: "Digite seu nome completo"),
              onChanged: (valorDigitado) {
                nome = valorDigitado;
              }),
          TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  label: Text("Data de Nascimento:"),
                  hintText: "Digite o ano de nascimento"),
              onChanged: (valorDigitado) {
                anoNascimento = int.parse(valorDigitado);
              }),
          ElevatedButton(
            child: Text("Calcular Idade"),
            onPressed: () {
              var anoAtual = DateTime.now().year;
              var idade = anoAtual - anoNascimento!;
              mostrarResultado(idade.toString(), context);
            },
          )
        ],
      ),
    );
  }
}
