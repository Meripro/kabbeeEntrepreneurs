import 'package:flutter/material.dart';
import 'package:homesweet/pages/navBar.dart';

class Client extends StatefulWidget {
  Client({Key? key}) : super(key: key);

  @override
  State<Client> createState() => _ClientState();
}

class _ClientState extends State<Client> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('client page'),
      ),
      body: Center(),
    );
  }
}
