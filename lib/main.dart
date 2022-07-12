import 'package:flutter/material.dart';
import 'package:flutter_app/widget/tarefa_form.dart';
import 'package:flutter_app/widget/usuario.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      routes: {
        "/": (context) => Usuario(),
        "/tarefaForm": (context) => TarefaForm()
      },
    );
  }
}
