import 'package:flutter/material.dart';
import 'package:finalappc1/src/pages/list.dart';

class Login extends StatelessWidget {
  final userController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppRest'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(240, 94, 100, 1),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Container(
          color: Color.fromRGBO(249, 246, 239, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 30),
                child: TextField(
                  controller: userController,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(),
                      labelText: 'Usuario',
                      hintText: 'Usuario'),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 5, 20, 30),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(),
                      labelText: 'Contraseña',
                      hintText: 'Contraseña'),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => List()));
                },
                textColor: Colors.black,
                padding: EdgeInsets.fromLTRB(133, 20, 133, 20),
                child: Text(
                  'Iniciar sesión',
                  style: TextStyle(fontSize: 16),
                ),
                color: Color.fromRGBO(42, 200, 194, 1),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: 38),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back),
              backgroundColor: Color.fromRGBO(42, 200, 194, 1),
            ),
          ],
        ),
      ),
    );
  }
}
