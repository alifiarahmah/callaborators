import 'package:flutter/material.dart';

import 'dashboard.dart';
import 'loginregister.dart';

void main() {
  runApp(MaterialApp(
      title: 'Call-A-Borators UI',
      home: Intro()
  ));
}

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Center(
            child: Column(
              children: [

                SizedBox(height: 350),

                Text("Insert persuasive and appealing catchphrase here"),

                SizedBox(height: 30),

                ButtonTheme(
                    minWidth: 300.0,
                    height: 50.0,
                    child: Column(
                      children: [

                        FlatButton(
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Register())
                            );
                          },
                          color: Colors.black,
                          child: Text('Start', style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),

                        SizedBox(height: 10),

                        FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Login())
                            );
                          },
                          child: Text("I have an account", style: TextStyle(decoration: TextDecoration.underline)),
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