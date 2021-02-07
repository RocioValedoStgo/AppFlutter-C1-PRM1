import 'package:flutter/material.dart';
import 'package:finalappc1/src/model/user.dart';

class Profile extends StatelessWidget {
  static const routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    final UserModel args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(240, 94, 100, 1),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Hi!',
                style: TextStyle(fontSize: 30),
              ),
              Text(args.name,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromRGBO(249, 246, 239, 1),
    );
  }
}
