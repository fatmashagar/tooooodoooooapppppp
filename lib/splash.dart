import 'package:flutter/material.dart';
import 'package:tooooodoooooapppppp/database/cachehelper.dart';
import 'package:tooooodoooooapppppp/on.dart';
import 'package:tooooodoooooapppppp/page1.dart';

class spalsh extends StatefulWidget {
  const spalsh({super.key});

  @override
  State<spalsh> createState() => _spalshState();
}

class _spalshState extends State<spalsh> {
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    nav();
  }
  void nav(){
  bool isvisited=cachehelper().getdata(key: 'onboarding')??false;
  Future.delayed(const Duration(seconds: 3),(){
    Navigator.push(context, MaterialPageRoute(builder: (_)=>isvisited? page1(): on()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Todo")),
    );
  }
}
