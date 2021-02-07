import 'package:flutter/material.dart';
import 'package:finalappc1/src/model/user.dart';
import 'package:finalappc1/src/pages/profile.dart';

class List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(240, 94, 100, 1),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: users.length,
        itemBuilder: (context, index) {
          return Container(
            height: 70,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 2),
                  )
                ]),
            child: ListTile(
              title: Text(users[index].name),
              subtitle: Text(users[index].job),
              leading: Icon(Icons.verified_user),
              onTap: () {
                Navigator.pushNamed(context, Profile.routeName,
                    arguments: users[index]);
              },
            ),
          );
        },
      ),
      backgroundColor: Color.fromRGBO(249, 246, 239, 1),
    );
  }
}
