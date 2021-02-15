import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'dashboard.dart';

class Interest extends StatefulWidget {
  @override
  _Interest createState() => _Interest();
}

class _Interest extends State<Interest> {

  @override
  Widget build(BuildContext context) {

    void showAsBottomSheet() async {
      final result = await showSlidingBottomSheet(
          context,
          builder: (context) {
            return SlidingSheetDialog(
              elevation: 8,
              cornerRadius: 0,
              snapSpec: const SnapSpec(
                snap: true,
                snappings: [0.4, 0.7, 1.0],
                positioning: SnapPositioning.relativeToAvailableSpace,
              ),
              builder: (context, state) {
                return Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Center(
                    child: Material(
                      child: ListView(
                        padding: EdgeInsets.all(5),
                        children: [

                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: (){},
                                  child:Text("Science", style: TextStyle(fontSize: 20)),
                                ),
                                SizedBox(width: 25),

                                InkWell(
                                  onTap: (){},
                                  child:Text("Technology", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                                ),
                                SizedBox(width: 25),

                                InkWell(
                                  onTap: (){},
                                  child:Text("Art", style: TextStyle(fontSize: 20)),
                                ),
                                SizedBox(width: 25),

                                InkWell(
                                  onTap: (){},
                                  child:Text("Engineering", style: TextStyle(fontSize: 20)),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 20),
                          Text("Software Engineering", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          Row(
                              children: [
                                Chip(label: Text("Software Development")),
                                Chip(label: Text("SEO")),
                                Chip(label: Text("Web Development")),
                                Chip(label: Text("iOS Development")),
                              ]
                          ),
                          Row(
                              children: [
                                Chip(label: Text("Mobile Development")),
                                Chip(label: Text("Database Management")),
                                Chip(label: Text("Desktop Application")),
                              ]
                          ),

                          SizedBox(height: 20),
                          Text("Data Science", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          Row(
                              children: [
                                Chip(label: Text("Data Visualization")),
                                Chip(label: Text("Data Analysis")),
                                Chip(label: Text("Data Mining")),
                                Chip(label: Text("Data Engineering")),
                              ]
                          ),

                          Text("Cyber Security", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          Row(
                              children: [
                                Chip(label: Text("Cryptography")),
                                Chip(label: Text("Binary Exploitation")),
                                Chip(label: Text("Web Exploitation")),
                                Chip(label: Text("Networking")),
                              ]
                          ),

                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
      );

      print(result); // This is the result.
    }


    return Scaffold(
        body: Container(
          padding: EdgeInsets.all(100),
          child: Column(
            children: [
              Text("What are your interests?"),
              SizedBox(height: 30),
              TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(),
                  hintText: '"Math", "Science", etc.',
                  suffixIcon: InkWell(
                    onTap: showAsBottomSheet,
                    child: Icon(Icons.add_circle)
                  )
                ),
              ),
            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(
            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Ready()));},
            child: Icon(Icons.arrow_right)
        ),

    );
  }

}

class Ready extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.4),
              Text("Now you're good to go!"),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              ButtonTheme(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                minWidth: 300.0,
                height: 50.0,
                child: RaisedButton(
                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()));},
                  child: Text("Go to my dashboard", style: TextStyle(color: Colors.white),),
                ),
              )
            ]
        ),
      )
    );
  }
}
