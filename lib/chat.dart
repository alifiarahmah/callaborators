import 'package:callaborators/guild.dart';
import 'package:callaborators/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ChatMessage{
  String messageContent;
  String messageType;
  ChatMessage({@required this.messageContent, @required this.messageType});
}

class ChatList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text("Chats", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        ChatHeader(), ChatHeader(),ChatHeader(),ChatHeader(),
        ChatHeader(),ChatHeader(),ChatHeader(),ChatHeader(),ChatHeader(),
      ],
    );
  }
}

class ChatHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen())),
        child: Container(
          padding: EdgeInsets.fromLTRB(8, 10, 8, 10),
          child: Row(
            children: [
              CircleAvatar(backgroundColor: Colors.white10, backgroundImage: AssetImage('images/pp.png')),
              SizedBox(width: 10),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Orang", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text("Hi!")
                  ],
                ),
              )
            ],

          ),
        )
    );
  }
}

class ChatScreen extends StatefulWidget{
  @override
  _ChatScreen createState() => _ChatScreen();
}

class _ChatScreen extends State<ChatScreen>{

  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hi!", messageType: "sender"),
    ChatMessage(messageContent: "Hey theree", messageType: "receiver"),
    ChatMessage(messageContent: "Name, right? \nI got interested in your skills and notable achievements in robotics.", messageType: "sender"),
    ChatMessage(messageContent: "I would like to go with you in a competition, would you mind?", messageType: "sender"),
    ChatMessage(messageContent: "Hey thanks :D\nI also admire your achievements in CP, that's cool!", messageType: "receiver"),
    ChatMessage(messageContent: "A competition? Sounds interesting. \nWhat competition do you want to join?", messageType: "receiver"),
  ];

  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      flexibleSpace: SafeArea(
        child: Container(
          padding: EdgeInsets.only(right: 16),
          child: Row(
            children: <Widget>[
              IconButton(
                padding: EdgeInsets.only(left: 20),
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
              ),
              SizedBox(width: 2,),
              CircleAvatar(
                backgroundColor: Colors.black12,
                backgroundImage: AssetImage("images/pp.png"),
                maxRadius: 20,
              ),
              SizedBox(width: 12,),
              Expanded(
                child: InkWell(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MemberProfile()));},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("A Person",style: TextStyle( fontSize: 16 ,fontWeight: FontWeight.w600),),
                      SizedBox(height: 6,),
                      Text("Online",style: TextStyle(color: Colors.grey.shade600, fontSize: 13),),
                    ],
                  ),
                )
              ),
              IconButton(icon: Icon(Icons.more_vert,color: Colors.black54), onPressed: (){},),
            ],
          ),
        ),
      ),
    ),

      // dari fcc h3h3 https://www.freecodecamp.org/news/build-a-chat-app-ui-with-flutter/
      body: Stack(
        children: <Widget>[

          ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: messages.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 10,bottom: 10),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index){
              return Container(
                padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
                child: Align(
                  alignment: (messages[index].messageType == "receiver"?Alignment.topLeft:Alignment.topRight),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: (messages[index].messageType  == "receiver"?Colors.grey.shade200:Colors.white),
                    ),
                    padding: EdgeInsets.all(8),
                    child: Text(messages[index].messageContent, style: TextStyle(fontSize: 15),),
                  ),
                ),
              );
            },
          ),

          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(Icons.add, color: Colors.white, size: 20, ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Expanded(
                    child: TextField(
                      controller: myController,
                      decoration: InputDecoration(
                          hintText: "Write message...",
                          hintStyle: TextStyle(color: Colors.black54),
                          border: InputBorder.none
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  FloatingActionButton(
                    onPressed: () {
                      messages.add(ChatMessage(messageContent: myController.text, messageType: "sender"));
                      setState(() {});
                      myController.text = '';
                    },
                    child: Icon(Icons.send,color: Colors.white,size: 18,),
                    backgroundColor: Colors.black,
                    elevation: 0,
                  ),
                ],

              ),
            ),
          ),
        ],
      ),
    );
  }
}