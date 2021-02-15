//import 'dart:html';

import 'package:flutter/material.dart';

class Bulletin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        LombaSuggested(),
        LombaDirectory()
      ],
    );
  }
}

class LombaSuggested extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Text("Recommended for you", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          LombaList(), LombaList(), LombaList(), LombaList(), LombaList()
        ]
      )
    );
  }
}

class LombaDirectory extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [

            TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)
                ),
                labelText: "Search",
                suffixIcon: Icon(Icons.search)
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("Sort by:  "),
                    ActionChip(onPressed: (){}, label: Text("Recommended for you")),
                    ActionChip(onPressed: (){}, label: Text("Newest")),
                    ActionChip(onPressed: (){}, label: Text("A-Z")),
                  ],
                ),
                TextButton(onPressed: (){}, child: Icon(Icons.filter_alt, color: Colors.black,),)
              ]
            ),

            LombaList(), LombaList(), LombaList(), LombaList()

          ]
        ),
    );
  }
}

class LombaIngfo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Color(0xFF0E97BC),
      ),

      body: Container(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Column(
              children: [
                Text("Judul Lomba", style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold)),
                Text("Organizer", style: TextStyle(color: Colors.black54,fontSize: 12, fontStyle: FontStyle.italic))
              ],
            ),

            SizedBox(height: 20),

            // chips about the lomba
            Row(
              children: [
                Chip(label: Text("Case Competition")),
                Chip(label: Text("Free")),
                Chip(label: Text("3 members")),
                Chip(label: Text("International")),
              ],
            ),

            SizedBox(height: 20),

            Container(color: Colors.black38, height: MediaQuery.of(context).size.height*0.3,),
            //Image(image: AssetImage('images/poster.png'), height: MediaQuery.of(context).size.height*0.3,),

            SizedBox(height: 20),

            Text("A short description about the competition. " +
                "It could be about the theme of the competition, what they should do, the mechanism, or else. " +
                "It shouldn't be more than 5 rows to make it a short and brief information."),

            SizedBox(height: 20),

            // date
            Text("Important Dates", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
            Text("Preliminaries", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
            Text("19 January 2021"),
            Text("Semifinal", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
            Text("24 January 2021"),
            Text("Final", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
            Text("19 January 2021"),

            SizedBox(height: 20),

            // more ingfo
            Text("More information", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
            TextButton(onPressed: (){}, child: Text("Official Website")),
            TextButton(onPressed: (){}, child: Text("LINE Official Account")),
            TextButton(onPressed: (){}, child: Text("Instagram")),
            TextButton(onPressed: (){}, child: Text("Twitter")),

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
      padding: EdgeInsets.all(4),
      width: MediaQuery.of(context).size.width,
      child: Card(
        child: InkWell(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LombaIngfo())),
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // ingfo lomba
                          Text("Judul Lomba", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          Text("Organizer", style: TextStyle(fontSize: 13, color: Colors.black45),),
                          Text("15 Januari 2021"),

                          SizedBox(height: 20)

                        ],
                      ),

                    ),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),

                Row(
                  children: [
                    Chip(label: Text("Case competition")),
                    Chip(label: Text("Free")),
                    Chip(label: Text("Team")),
                    Chip(label: Text("3 members")),
                    Chip(label: Text("International")),
                  ],
                )

              ],
            ),
          ),
        ),
        )
      );
  }
}