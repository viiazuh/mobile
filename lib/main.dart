import 'package:flutter/material.dart';
// import "package:flutter_application_1/p/home.dart";
// import 'package:flutter_application_1/p/ingredients.dart';


//---pertemuan 3 
// import 'package:flutter_application_1/pertemuan3/home.dart';
import 'package:flutter_application_1/pertemuan6/home.dart';
import "package:flutter_application_1/pertemuan6/provider.dart";
import 'package:provider/provider.dart';


void main() {
  runApp(MultiProvider(providers: [ChangeNotifierProvider(create: (_)=> Provider6())],
  child: MainApp(),));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    var  prov6 = Provider.of<Provider6>(context);
    return MaterialApp(
      title: "pertama 1",
      theme: prov6.enableDarkMode?prov6.dark:prov6.light,
          // colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 68, 217, 13)),//inipertemuan 1 dan 2
          // useMaterial3: false),
      home: Myhome6(),
    );
  }
}


