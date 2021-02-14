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
              cornerRadius: 16,
              snapSpec: const SnapSpec(
                snap: true,
                snappings: [0.4, 0.7, 1.0],
                positioning: SnapPositioning.relativeToAvailableSpace,
              ),
              builder: (context, state) {
                return Container(
                  height: 400,
                  child: Center(
                    child: Material(
                      /*child: InkWell(
                        onTap: () => Navigator.pop(context, 'This is the result.'),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            'This is the content of the sheet',
                            //style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                      ),*/
                      child: ListView(
                        children: [

                          Row(
                            children: [Text("Science"), Text("Technology"), Text("Art"), Text("Engineering")],
                          ),

                          // TODO: list daftar interest di  list interest + chips


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
              RaisedButton(
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()));},
                child: Text("Go to my dashboard"),
              )
            ]
        ),
      )
    );
  }
}
