import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Usuario extends StatelessWidget {
  Future<List<Map<String, Object?>>> buscarDados() async {
    String caminho = join(await getDatabasesPath(), "banco.db");
    Database banco = await openDatabase(
      caminho,
      version: 1,
      onCreate: (db, version) {
        db.execute('''CREATE TABLE usuario(
          id INTEGER PRIMARY KEY,
          nome TEXT,
          email TEXT)''');
        db.execute(
            'INSERT INTO usuario(nome, email) VALUES ("Nome", "Matheus Magalhães Urbano")');
        db.execute(
            'INSERT INTO usuario(nome, email) VALUES ("Email", "matheusinho@ifpr.com")');
      },
    );
    List<Map<String, Object?>> lista =
        await banco.rawQuery('SELECT * FROM usuarios');
    return lista;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Informações do Usuario"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(context, "/formTarefas");
            },
          )
        ],
      ),
      body: FutureBuilder(
        builder:
            (context, AsyncSnapshot<List<Map<String, Object?>>> dadosFuturo) {
          if (!dadosFuturo.hasData) return CircularProgressIndicator();
          var listaUsuario = dadosFuturo.data!;
          return ListView.builder(
              itemCount: listaUsuario.length,
              itemBuilder: (context, contador) {
                var usuario = listaUsuario[contador];
                return ListTile(
                  title: Text(usuario['nome'].toString()),
                  subtitle: Text(usuario['email'].toString()),
                );
              });
        },
      ),
    );
  }
}
