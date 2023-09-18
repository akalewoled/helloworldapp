import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('cloning project')),
      body: Column();
       
  }
}
class BOdy  extends StatefulWidget {
  const BOdy ({super.key});

  @override
  State<BOdy > createState() => _BOdy State();
}

class _BOdy State extends State<BOdy > {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}