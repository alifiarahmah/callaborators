import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage('images/pp.png')
                ),
                Text("Firstname Lastname", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                Text("Description here")
              ],
            )
          ),
        ],
      ),
    );
  }
}