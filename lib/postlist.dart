
import 'package:flutter/material.dart';
import 'Post.dart';
class postlist extends StatefulWidget {
  final List<Post> lsititems;
  postlist(this.lsititems);
  @override
  _postlistState createState() => _postlistState();
}

class _postlistState extends State<postlist> {
  void like(Function callback){
    this.setState(() {
      callback();
    });
  }
  @override
  Widget build(BuildContext context) {
    return
     ListView.builder( 
      itemCount: this.widget.lsititems.length,
      itemBuilder: (context  ,index) {
        var post = this.widget.lsititems[index];
        return 
        Card( child :
          Row(
            children: <Widget>[
          Expanded(
            child: ListTile(
                      title: Text(post.body),
                      subtitle: Text(post.author),
            )),
          Row(
            children: <Widget>[
              Container( child:
               Text(
                  post.likes.toString(),
                  style: TextStyle(fontSize: 20)
                  )
              ,
              padding: EdgeInsets.fromLTRB(0, 0, 10, 0) 
              ),
              IconButton(
                 icon: Icon(Icons.thumb_up),
                 onPressed:()=>this.like(post.likepost),
                 color: post.userliked ? Colors.green:Colors.black,
                 )
            ],
          ) 
          ]));
        
      },
    );
  }
} 