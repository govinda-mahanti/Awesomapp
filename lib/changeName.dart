import 'package:awesomapp/bg_image.dart';
import 'package:flutter/material.dart';

class changeNameCard extends StatelessWidget {
  const changeNameCard({
    super.key,
    required this.myText,
    required TextEditingController nameControler,
  }) : _nameControler = nameControler;

  final String myText;
  final TextEditingController _nameControler;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        BgImage(),
        SizedBox(
          height: 20,
        ),
        Text(myText, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
            padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _nameControler,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter something here",
                labelText: "Name"),
          ),
        ),
      ],
    );
  }
}