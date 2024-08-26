import 'package:awesomapp/bg_image.dart';
import 'package:awesomapp/pages/homepage.dart';
import 'package:awesomapp/utils/Constant.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login page"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            BgImage(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Form(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: <Widget>[
                                TextFormField(
                                  controller: userNameController,
                                  decoration: InputDecoration(
                                    hintText: "Enter Username",
                                    labelText: "Username",
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  controller: passwordController,
                                  decoration: InputDecoration(
                                    hintText: "Enter Password",
                                    labelText: "Password",
                                  ),
                                  obscureText: true,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              // Navigator.push(
                              //   context, MaterialPageRoute(builder: (context)=>HomePage())
                              // );

                              Constant.prefs.setBool("LoggedIn", true);

                              Navigator.pushReplacementNamed(context, "/home");
                              
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Colors.orange, 
                            ),
                            child: Text("Sign In"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
