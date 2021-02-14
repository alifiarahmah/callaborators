import 'package:callaborators/teamsearch.dart';
import 'package:flutter/material.dart';

import 'loginregister.dart';
import 'dashboard.dart';
import 'interest.dart';

void main() {
  runApp(MaterialApp(
      title: 'Call-A-Borators UI',
      home: Intro() //TODO: ganti lagi jadi homenya intro pas build hihi mangatt
  ));
}

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
        children: [

          SizedBox(height: MediaQuery.of(context).size.height * 0.3),

          Image.asset('images/collab.png', height: 100),

          SizedBox(height: 10),

          Text("Ready to meet your desired partners?"),

          SizedBox(height: 30),

          ButtonTheme(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            minWidth: 300.0,
            height: 50.0,
            child: Column(
              children: [

                RaisedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Register())
                    );
                  },
                  color: Color(0xFF0E97BC),
                  child: Text('Start', style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),

                SizedBox(height: 10),

                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login())
                    );
                  },
                  child: Text("I have an account", style: TextStyle(color: Colors.black, decoration: TextDecoration.underline)),
                )

              ],

            )
          ),
        ],
        )
      )
    );
  }
}