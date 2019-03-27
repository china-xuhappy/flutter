import 'package:flutter/material.dart';
import 'dart:async';


class LoadingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _LoadingState();
  }

}
class _LoadingState extends State<LoadingPage>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    new Future.delayed(Duration(seconds: 3),(){
      print("3miao");
      Navigator.of(context).pushReplacementNamed("app");
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new Image.asset("images/loading.jpg"),
    );
  }

}
