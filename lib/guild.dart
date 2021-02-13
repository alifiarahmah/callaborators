import 'package:flutter/material.dart';
import 'teamsearch.dart';
import 'profile.dart';

class Guild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [

          // profile
          Container(
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black12,
                ),
                Column(
                  children: [
                    Text('Guild Name', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('2 members')
                  ]
                )
              ],
            ),
          ),

          // short description about guild
          Align(
            alignment: Alignment.centerLeft,
            child: Text("A short description about the guild. It could be the competition they're on, etc."),
          ),


          Align(
            alignment: Alignment.centerLeft,
            child: Text("Members", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
          ),

          // member list
          Container(
            child: Column(
              children: [
                MemberList(),
                MemberList(),
                MemberList(),

                // Add member
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TeamSearch()) // backen Auth di sini
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.add),
                      Text("Add members")
                    ],
                  )
                )

              ],
            )
          ),

        ],
      ),
    );
  }
}

class MemberList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MemberProfile())),
        child: Container(
          margin: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    CircleAvatar(backgroundColor: Colors.black12, backgroundImage: AssetImage('images/pp.png'),),
                    Text("Member", style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                )
              ),
              Icon(Icons.more_vert)
            ],
          ),
        ),
      ),
    );
  }
}

class MemberProfile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
      ),
      body: Profile()
    );
  }
}