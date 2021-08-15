import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 45),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(child: Container()),
              // SizedBox(height: 100,),
              Center(
                child: Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: (TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
                ),
              ),
              SizedBox(height: 30,),
              Text(
                "Username",
                textAlign: TextAlign.left,
                style: (TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold)),
              ),
              TextFormField(
                  decoration: InputDecoration(
                // contentPadding:
                // EdgeInsets.only(bottom: 20), // add padding to adjust text
                prefixIcon: Icon(Icons.people_alt_outlined),
                labelText: "Type your username",
              )),
             SizedBox(height: 20),
              Text(
                "Password",
                style: (TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold)),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline),
                    border: UnderlineInputBorder(),
                    labelText: 'Type your password'),
              ),
              SizedBox(height: 10,),
              TextButton(
                  style: TextButton.styleFrom(
                    textStyle:
                        const TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  onPressed: () {},
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: const Text(
                      'Forgot password?',
                      style: TextStyle(color: Colors.black),
                    ),
                  )),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF5fe0ff), Color(0xFFf481bb)],
                  ),
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                      primary: Colors.transparent,
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      textStyle: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                  onPressed: () {},
                  child: const Text('LOGIN'),
                ),
              ),
              SizedBox(height: 50,),
              Center(
                child: Text(
                  "Or Sign Up Using",
                  style: (TextStyle(color: Colors.black, fontSize: 14)),
                ),
              ),
              SizedBox(height: 5,),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: () {}, icon: FaIcon(FontAwesomeIcons.facebook),
                    color: Colors.blue.shade900,
                    iconSize: 36,),
                    // Icon(Icons.)
                    IconButton(onPressed: () {}, icon: FaIcon(FontAwesomeIcons.twitter),
                    color: Colors.blue,
                    iconSize: 36,),
                    IconButton(onPressed: () {}, icon: FaIcon(FontAwesomeIcons.googlePlus),
                    color: Colors.red,
                    iconSize: 36,),
                  ],
                ),
              ),
              Expanded(child: Container()),
              // SizedBox(height: 50,),
              Center(
                child: Text(
                  "Or sign Up Using",
                  style: (TextStyle(color: Colors.black, fontSize: 14)),
                ),
              ),
              // SizedBox(height: 5,),
              Center(
                child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                    child: Align(
                      // alignment: Alignment.centerRight,
                      child: const Text(
                        'SIGN UP',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
