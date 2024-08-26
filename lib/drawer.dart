import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // DrawerHeader(
          //   child: Text("i am drawer",
          //   style: TextStyle(color: Colors.white),),
          //   decoration: BoxDecoration(color: Colors.indigo),
          // ),
          UserAccountsDrawerHeader(
            accountName: Text("Govinda Mahanti"),
            accountEmail: Text("gmahanti955@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("https://static.vecteezy.com/system/resources/thumbnails/002/387/693/small_2x/user-profile-icon-free-vector.jpg"),
            ),
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Acoount"),
            subtitle: Text("personal"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("demo@gmail.com"),
            trailing: Icon(Icons.edit),
          )
        ],
      ),
    );
  }
}
