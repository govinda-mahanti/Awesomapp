// import 'package:awesomapp/changeName.dart';
import 'package:awesomapp/drawer.dart';
import 'package:awesomapp/utils/Constant.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TextEditingController _nameControler = TextEditingController() ;
  var myText ="Change Me";
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;
  // const ({super.key});
  @override
  void initState() {
    super.initState();
    getData();
  }

   getData() async {
    var res = await http.get(Uri.parse(url)); // Fixed the URI parsing
    if (res.statusCode == 200) {
      setState(() {
        data = jsonDecode(res.body);
        setState(() {
          
        });
        print(data);
      });
    } else {
      print("Failed to load data");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome App",
        style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            color: Colors.white,
            onPressed: (){
              Constant.prefs.setBool("loggedIn", false);
              Navigator.pushReplacementNamed(context, "/login");

            },
            
            )
        ],
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
          child: data!=null
          ?ListView.builder(
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListTile(
                    title: Text(data[index]["title"]),
                    subtitle: Text("${data[index]["id"]}"),
                    leading: Image.network(data[index]["url"]),
                  ),
                );
              },
              itemCount: data.length,
            )
          : CircularProgressIndicator(),
      ),
      drawer: MyDrawer(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          myText=_nameControler.text;
          setState(() {

          });
        },
        child: Icon(Icons.refresh),
      ),


    );
  }
}




            // child: changeNameCard(myText: myText, nameControler: _nameControler),
