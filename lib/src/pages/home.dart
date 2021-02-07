import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 60),
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 250,
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Welcome to AppRest',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 2, 10, 80),
                child: Text("Access anywhere. It's free. Forever.",
                    style: TextStyle(fontSize: 15)),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                textColor: Colors.black,
                padding: EdgeInsets.fromLTRB(80, 15, 80, 15),
                child: Text(
                  'Inicie sesión',
                  style: TextStyle(fontSize: 16),
                ),
                color: Color.fromRGBO(42, 200, 194, 1),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromRGBO(240, 94, 100, 1),
    );
  }
}
