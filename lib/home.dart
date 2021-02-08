import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Selamat pagi!"),
          Text("Firstname Lastname", style: TextStyle(fontWeight: FontWeight.bold)),

        ],
      ),
    );
  }
}