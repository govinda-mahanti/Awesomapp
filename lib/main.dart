
import 'package:awesomapp/pages/homepage.dart';
import 'package:awesomapp/pages/loginpage.dart';
import 'package:awesomapp/utils/Constant.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();

  Constant.prefs=await SharedPreferences.getInstance();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Awesome App",
    home: Constant.prefs.getBool("loggedIn")==true
    ? HomePage()
    : Loginpage(),
    theme: ThemeData(
      primarySwatch: Colors.purple
    ),
    routes: {
      "/login":(context)=>Loginpage(),
      "/home": (context)=>HomePage()
    },
  ));
}





// Center(
// child: Container(
// padding: const EdgeInsets.all(8),
// alignment: Alignment.center,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// boxShadow: [
// BoxShadow(
// color: Colors.grey,
// blurRadius:5,
// offset: Offset(2.0, 5.0))
// ],
// color: Colors.green,
// gradient: LinearGradient(colors: const [Colors.red, Colors.yellow])
// ),
// width: 100,
// height: 100,
// child: Text("i am box",
// style: TextStyle(
// color: Colors.white,
// fontWeight: FontWeight.bold,
// fontSize: 20,
// ),),
// ),
// ),
//
// );





// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Align(
// alignment: Alignment.bottomLeft,
// child: Container(
// color: Colors.black,
// width: 200,
// height: 400,
// // width: MediaQuery.of(context).size.width,
// // height: MediaQuery.of(context).size.height,
// child: Column(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Container(
// padding: const EdgeInsets.all(8),
//
// width: 100,
// height: 100,
// color: Colors.red,
// ),
// Container(
// padding: const EdgeInsets.all(8),
// width: 100,
// height: 100,
// color: Colors.yellow,
// ),
// Container(
// padding: const EdgeInsets.all(8),
// width: 100,
// height: 100,
// color: Colors.green,
// ),
// ],
// ),
// ),
// ),
// )



// DrawerHeader(
//   child: Text("i am drawer",
//   style: TextStyle(color: Colors.white),),
//   decoration: BoxDecoration(color: Colors.indigo),
// ),