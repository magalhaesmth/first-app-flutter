import 'package:flutter/material.dart';

class Calculadora extends StatelessWidget {
  List? numero;

  calcular() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Calculadora'),
            ],
          ),
        ),
        //backgroundColor: Colors.gray,
        body: Center(
          child: Builder(builder: (context) {
            return Container(
              color: Color.fromARGB(255, 187, 187, 187),
              child: Column(
                children: [
                  Row(
                    children: [
                      TextField(
                        decoration: InputDecoration(label: Text(" ")),
                        onChanged: (valorDigitado) {
                          for (int i = 0; i < 0; i++) {
                            numero![i] = double.parse(valorDigitado);
                          }
                        },
                      ),
                    ],
                  ),
                  SizedBox(width: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        child: Text(
                          'CE',
                          style: TextStyle(
                              color: Color.fromARGB(255, 136, 209, 199),
                              fontSize: 40),
                        ),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)))),
                        onPressed: () {
                          print(1);
                        },

                        //color: Color.fromARGB(255, 116, 71, 128),
                      ),
                      SizedBox(width: 5),
                      RaisedButton(
                        child: Text(
                          '( )',
                          style: TextStyle(
                              color: Color.fromARGB(255, 136, 209, 199),
                              fontSize: 40),
                        ),
                        onPressed: () {},
                        color: Color.fromARGB(255, 136, 209, 199),
                      ),
                      SizedBox(width: 5),
                      RaisedButton(
                        child: Text(
                          '%',
                          style: TextStyle(
                              color: Color.fromARGB(255, 136, 209, 199),
                              fontSize: 40),
                        ),
                        onPressed: () {},
                        color: Color.fromARGB(255, 76, 94, 104),
                      ),
                      SizedBox(width: 5),
                      RaisedButton(
                        child: Text(
                          '÷',
                          style: TextStyle(
                              color: Color.fromARGB(255, 136, 209, 199),
                              fontSize: 40),
                        ),
                        onPressed: () {},
                        color: Color.fromARGB(255, 76, 94, 104),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        child: Text(
                          '7',
                          style: TextStyle(
                              color: Color.fromARGB(255, 136, 209, 199),
                              fontSize: 40),
                        ),
                        onPressed: () {},
                        color: Color.fromARGB(255, 34, 43, 48),
                      ),
                      SizedBox(width: 5),
                      RaisedButton(
                        child: Text(
                          '8',
                          style: TextStyle(
                              color: Color.fromARGB(255, 136, 209, 199),
                              fontSize: 40),
                        ),
                        onPressed: () {},
                        color: Color.fromARGB(255, 34, 43, 48),
                      ),
                      SizedBox(width: 5),
                      RaisedButton(
                        child: Text(
                          '9',
                          style: TextStyle(
                              color: Color.fromARGB(255, 136, 209, 199),
                              fontSize: 40),
                        ),
                        onPressed: () {},
                        color: Color.fromARGB(255, 34, 43, 48),
                      ),
                      SizedBox(width: 5),
                      RaisedButton(
                        child: Text(
                          'x',
                          style: TextStyle(
                              color: Color.fromARGB(255, 136, 209, 199),
                              fontSize: 40),
                        ),
                        onPressed: () {},
                        color: Color.fromARGB(255, 76, 94, 104),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        child: Text(
                          '4',
                          style: TextStyle(
                              color: Color.fromARGB(255, 136, 209, 199),
                              fontSize: 40),
                        ),
                        onPressed: () {},
                        color: Color.fromARGB(255, 34, 43, 48),
                      ),
                      SizedBox(width: 5),
                      RaisedButton(
                        child: Text(
                          '5',
                          style: TextStyle(
                              color: Color.fromARGB(255, 136, 209, 199),
                              fontSize: 40),
                        ),
                        onPressed: () {},
                        color: Color.fromARGB(255, 34, 43, 48),
                      ),
                      SizedBox(width: 5),
                      RaisedButton(
                        child: Text(
                          '6',
                          style: TextStyle(
                              color: Color.fromARGB(255, 136, 209, 199),
                              fontSize: 40),
                        ),
                        onPressed: () {},
                        color: Color.fromARGB(255, 34, 43, 48),
                      ),
                      SizedBox(width: 5),
                      RaisedButton(
                        child: Text(
                          '-',
                          style: TextStyle(
                              color: Color.fromARGB(255, 136, 209, 199),
                              fontSize: 40),
                        ),
                        onPressed: () {},
                        color: Color.fromARGB(255, 76, 94, 104),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        child: Text(
                          '1',
                          style: TextStyle(
                              color: Color.fromARGB(255, 136, 209, 199),
                              fontSize: 40),
                        ),
                        onPressed: () {},
                        color: Color.fromARGB(255, 34, 43, 48),
                      ),
                      SizedBox(width: 5),
                      RaisedButton(
                        child: Text(
                          '2',
                          style: TextStyle(
                              color: Color.fromARGB(255, 136, 209, 199),
                              fontSize: 40),
                        ),
                        onPressed: () {},
                        color: Color.fromARGB(255, 34, 43, 48),
                      ),
                      SizedBox(width: 5),
                      RaisedButton(
                        child: Text(
                          '3',
                          style: TextStyle(
                              color: Color.fromARGB(255, 136, 209, 199),
                              fontSize: 40),
                        ),
                        onPressed: () {},
                        color: Color.fromARGB(255, 34, 43, 48),
                      ),
                      SizedBox(width: 5),
                      RaisedButton(
                        child: Text(
                          '+',
                          style: TextStyle(
                              color: Color.fromARGB(255, 136, 209, 199),
                              fontSize: 40),
                        ),
                        onPressed: () {},
                        color: Color.fromARGB(255, 76, 94, 104),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        child: Text(
                          '0',
                          style: TextStyle(
                              color: Color.fromARGB(255, 136, 209, 199),
                              fontSize: 40),
                        ),
                        onPressed: () {},
                        color: Color.fromARGB(255, 34, 43, 48),
                      ),
                      SizedBox(width: 5),
                      RaisedButton(
                        child: Text(
                          ',',
                          style: TextStyle(
                              color: Color.fromARGB(255, 136, 209, 199),
                              fontSize: 40),
                        ),
                        onPressed: () {},
                        color: Color.fromARGB(255, 34, 43, 48),
                      ),
                      SizedBox(width: 5),
                      RaisedButton(
                        child: Text(
                          '⌫',
                          style: TextStyle(
                              color: Color.fromARGB(255, 136, 209, 199),
                              fontSize: 40),
                        ),
                        onPressed: () {},
                        color: Color.fromARGB(255, 34, 43, 48),
                      ),
                      SizedBox(width: 5),
                      RaisedButton(
                        child: Text(
                          '=',
                          style: TextStyle(
                              color: Color.fromARGB(255, 136, 209, 199),
                              fontSize: 40),
                        ),
                        onPressed: () {},
                        color: Color.fromARGB(255, 44, 78, 95),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
        ));
  }
}
