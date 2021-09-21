import 'package:flutter/material.dart';

class Person extends StatefulWidget {
  Person({Key? key}) : super(key: key);

  @override
  _PersonState createState() => _PersonState();
}

class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Person'),);
  }
}
