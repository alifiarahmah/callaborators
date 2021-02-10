import 'package:flutter/material.dart';

class NameCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Card(
          child: Container(
            padding: EdgeInsets.all(7),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(25),
                  child: CircleAvatar(
                      radius: 50, backgroundImage: NetworkImage('images/pp.png')),
                ),

                Text("Ingfo????",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),

                Text(
                    "Lorem ipsum dolor sit amet wkelkwjalkjdfkldslkfladsfh kladsfhlkadshfkl adsfkl adsklfnadskl"),

                Text("No ingfo"),
                // kasih interest sama skills nya

                // should be sticky
                ButtonBar(
                    alignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RaisedButton(
                        child: Icon(Icons.account_circle),
                        onPressed: (){},
                      ),
                      RaisedButton(
                        child: Text("Chat"),
                        onPressed: (){},
                      ),
                    ],
                  )
              ],
            ),
          )
        )
    );
  }
}
