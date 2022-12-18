import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'interest.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register>{

  bool passwordShow = false;

  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Center(
            child: Column(
              children: [

                Padding(
                  padding: EdgeInsets.fromLTRB(0, 100, 0, 10),
                  child: Text("Register",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      )),
                ),

                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Name'
                        ),
                      ),

                      SizedBox(height: 10),

                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Email',
                        ),
                      ),

                      SizedBox(height: 10),

                      TextField(
                        obscureText: !passwordShow,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Password',
                          suffixIcon: InkWell(
                            onTap: _togglePasswordView,
                            child: Icon(Icons.visibility),
                          ),
                        ),
                      ),

                      SizedBox(height: 10),

                      ButtonTheme(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          minWidth: MediaQuery.of(context).size.width * 0.9,
                          height: 50.0,
                          child: Column(
                            children: [

                              ElevatedButton(
                                onPressed: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Interest()) // backend auth di sini
                                  );
                                },
                                //color: Color(0xFF0E97BC),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:Color(0xFF0E97BC)
                                ),
                                child: Text('Register', style: TextStyle(color: Colors.white, fontSize: 15),
                                ),
                              ),

                              SizedBox(height: 10),

                              ElevatedButton(
                                onPressed: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Dashboard()) // backen Auth di sini
                                  );
                                },
                                // color: Colors.white,
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:Colors.white
                                ),
                                child: Text('Continue with Google', textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 15),
                                ),
                              ),

                              SizedBox(height: 10),

                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Login())
                                  );
                                },
                                child: Text("I have an account", style: TextStyle(color: Colors.black, decoration: TextDecoration.underline)),
                              )

                            ],

                          )
                      ),
                    ],
                  ),
                  margin: EdgeInsets.fromLTRB(100, 10, 100, 0),
                ),

              ],
            )
        )
    );
  }

  void _togglePasswordView() {
    setState(() {
      passwordShow = !passwordShow;
    });
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login>{

  bool passwordShow = false;

  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Center(
            child: Column(
              children: [

                Padding(
                  padding: EdgeInsets.fromLTRB(0, 100, 0, 10),
                  child: Text("Log in",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      )),
                ),

                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Username/Email',
                        ),
                      ),

                      SizedBox(height: 10),

                      TextField(
                        obscureText: !passwordShow,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Password',
                          suffixIcon: InkWell(
                            onTap: _togglePasswordView,
                            child: Icon(Icons.visibility),
                          ),
                        ),
                      ),

                      SizedBox(height: 10),

                      ButtonTheme(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          minWidth: MediaQuery.of(context).size.width * 0.9,
                          height: 50.0,
                          child: Column(
                            children: [

                              ElevatedButton(
                                onPressed: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Dashboard()) // backen Auth di sini
                                  );
                                },
                                // color: Color(0xFF0E97BC),
                                // // color: Colors.white,
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:Color(0xFF0E97BC)
                                ),
                                child: Text('Log In', style: TextStyle(color: Colors.white, fontSize: 15),
                                ),
                              ),

                              SizedBox(height: 10),

                              ElevatedButton(
                                onPressed: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Dashboard()) // backen Auth di sini
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:Colors.white
                                ),
                                child: Text('Log in with Google', style: TextStyle(color: Colors.black, fontSize: 15),
                                ),
                              ),

                              SizedBox(height: 10),

                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Register())
                                  );
                                },
                                child: Text("Don't have any account?", style: TextStyle(color: Colors.black, decoration: TextDecoration.underline)),
                              )

                          ],

                        )
                      ),
                    ],
                  ),
                  margin: EdgeInsets.fromLTRB(100, 10, 100, 0),
                ),

              ],
            )
        )
    );
  }

  void _togglePasswordView(){
    setState((){
      passwordShow = !passwordShow;
    });
  }

}