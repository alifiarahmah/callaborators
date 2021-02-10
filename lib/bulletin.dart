import 'package:flutter/material.dart';

class Bulletin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          child: Column(
            children: [

              // rekomendasi lomba
              Text("Recommended for you", textAlign: TextAlign.left,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: [LombaBox(), LombaBox(), LombaBox()]
                  )
              ),
            ],
          ),
        ),

        // Direktori lomba
        Container(
            child: Column(
              children: [
                Text("Daftar lomba", textAlign: TextAlign.left,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                        children: [LombaList(), LombaList(), LombaList()]
                    )
                ),
              ],
            )
        )
      ],
    );
      /*Column(
      children: [

        // Recommended for you
        Container(
          child: Column(
            children: [

              // rekomendasi lomba
              Text("Recommended for you", textAlign: TextAlign.left,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: [LombaBox(), LombaBox(), LombaBox()]
                )
              ),
            ],
          ),
        ),

        // Direktori lomba
        Container(
          child: Column(
            children: [
              Text("Daftar lomba", textAlign: TextAlign.left,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                      children: [LombaBox(), LombaBox(), LombaBox()]
                  )
              ),
            ],
          )
        )


      ],
    );*/
  }
}

// mari bikin widget lagi tapi isinya kotak lombanya
class LombaBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 300,
      child: Card(
          child: Column(
            children: [

              // Keterangan
              Container(
                  child: Column(
                    children: [
                      Text("Judul Lomba", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      Text("19 Januari 1954"),
                    ],
                  )
              )
            ],
          )
      )
    );
  }
}

class LombaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.all(4),
      width: MediaQuery.of(context).size.width,
      child: Card(
        child: Column(
          children: [

            // Keterangan
            Container(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                       children: [
                         Text("Judul Lomba", textAlign: TextAlign.left, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                         Text("19 Januari 1954", textAlign: TextAlign.left),
                       ],
                      )
                    )
                  ],
                )
            ),

            ButtonBar(
              children: [
                /*FlatButton(
                  child: Text("pin ea"),
                ),*/
                RaisedButton(
                  child: Text("More..."),
                  onPressed: (){}
                )
              ],
            )

        ],
        )
      )
    );
  }
}