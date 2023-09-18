
import 'package:flutter/material.dart';
import 'Post.dart';
import 'MyWidget.dart';
import 'postlist.dart';
class myhomepage extends StatefulWidget {
  const myhomepage({super.key});

  @override
  State<myhomepage> createState() => _myhomepageState();
}





class _myhomepageState extends State<myhomepage> {
  List<Post> posts=[];

  void newpost(String text){
    this.setState(() {
        posts.add(new Post(text,"Tim"));
    });

  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title:Text('cloning project')),
      body: Column(children: <Widget>[ 
        Expanded(child:postlist(this.posts)),
        Expanded(child:MyWidget(this.newpost))])
      );
       }
}