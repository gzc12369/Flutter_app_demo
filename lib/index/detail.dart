import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MovieDetail extends StatefulWidget {
  final String id;
  final String title;

  const MovieDetail({Key? key,required this.id,required this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MovieDetailStates();
  }
}

class _MovieDetailStates extends State<MovieDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(widget.title),centerTitle: true,),body: Text("id:${widget.id}"),);
  }
  
}