import 'package:flutter/material.dart';
import 'package:random_words/random_words.dart';

class IdeaGen extends StatefulWidget {
  @override
  _IdeaGen createState() => _IdeaGen();
}

class _IdeaGen extends State<IdeaGen> {

  @override
  Widget build(BuildContext context) {

    String randomWords = generateNoun().take(3).toString();

    changeWords() {
      setState(() {
        randomWords = generateNoun().take(3).toString();
      });
    }

    return Scaffold(
      body: Center(
          child: Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
              child: Column(
                children: [
                  Text("Idea Generator", style: TextStyle(
                      fontSize: 28, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),

                  Icon(Icons.lightbulb, size: 40, color: Colors.orange,),
                  SizedBox(height: 20),

                  Text(
                    '"Good ideas are common – what\'s uncommon are people \nwho\'ll work hard enough to bring them about."\n- Anonymous',
                    style: TextStyle(fontStyle: FontStyle.italic),
                    textAlign: TextAlign.center,),

                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),

                  Text("Does these words spark anything in your mind?"),
                  SizedBox(height: 30),

                  Text('$randomWords', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),),
                  // dah

                  SizedBox(height: 30),

                  ButtonTheme(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    minWidth: MediaQuery.of(context).size.width * 0.6,
                    height: 50.0,
                    child: Column(
                      children: [
                        RaisedButton(
                          child: Text("Shuffle!", style: TextStyle(color: Colors.white, fontSize: 16)),
                          onPressed: changeWords,
                        ),
                        SizedBox(height: 10),
                        RaisedButton(
                          child: Text("Quit"),
                          color: Colors.white,
                          onPressed: () => Navigator.of(context).pop(),
                        )
                      ],
                    ),
                  )

                ],
              )
          )
      ),
    );
  }
}
