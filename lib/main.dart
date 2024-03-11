import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tooooodoooooapppppp/database/cachehelper.dart';
import 'package:tooooodoooooapppppp/on.dart';
import 'package:tooooodoooooapppppp/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
await  cachehelper.init();
// SharedPreferences pref=await SharedPreferences.getInstance();
// SharedPreferences pref2=await SharedPreferences.getInstance();
// print(pref==pref2);
  runApp(  const MaterialApp(

    debugShowCheckedModeBanner: false,
    home:spalsh(),
  ));
}
