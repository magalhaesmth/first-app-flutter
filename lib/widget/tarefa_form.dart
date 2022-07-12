import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class TarefaForm extends StatelessWidget {
  const TarefaForm({Key? key}) : super(key: key);

  salvar(String nome, String descricao, [int? id]) async {
    String caminho = join(await getDatabasesPath()
    , 'banco.db');
    Database banco = await openDatabase(caminho, version: 1);

    String sql;
    Future<int> linhasAfetadas;
    if (id == null) {
      sql = 'INSERT INTO tarefa (nome, descricao) VALUES (?, ?)';
      linhasAfetadas = banco.rawInsert(sql, [nome, descricao]);
    } else {
      sql = 'UPDATE tarefa SET nome = ?, descricao = ? WHERE id = ?';
      linhasAfetadas = banco.rawUpdate(sql, [nome, descricao, id]);
    }
    return linhasAfetadas;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text("Cadastro Tarefa"),
    ));
  }
}
