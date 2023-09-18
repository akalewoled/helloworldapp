
import 'package:flutter/material.dart';
class  MyWidget extends StatefulWidget {
  final Function(String) callback;
  MyWidget(this.callback); 
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {


  final Controller = TextEditingController();
  @override

  void dispose(){ 
    super.dispose();
    Controller.dispose();
  }
void click(){
  widget.callback(Controller.text);
  Controller.clear();
  FocusScope.of(context).unfocus();
} 
  @override
  Widget build(BuildContext context) {
  return  
      TextField(
        controller: this.Controller,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.message),
          labelText:"hello my friend 123",
          suffixIcon:IconButton(
            hoverColor: Colors.red.withOpacity(1),
            icon: Icon(Icons.send),
            splashColor: Colors.blue,
            tooltip: "this is  post message",
            onPressed: this.click,
            )
             ),
        );
         }
}