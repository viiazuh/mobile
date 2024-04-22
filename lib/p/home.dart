import 'package:flutter/material.dart';
import 'package:flutter_application_1/p/ingredients.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
          ),
          Center(child:Text(" Mangga",
          style : TextStyle(fontSize:28, fontWeight: FontWeight.bold))),
          Padding(
            padding: EdgeInsets.all(8.0),
          ),
          Center(child:Text(" ini adalah random text,jadi iya sudah gak tau mau ngetik apa yang penting di ketik saja wajrodwjhqaeirhfnwuehtiwbhi3rnbiwjfijnwio3ejfhnbiwjhfnbiowehjfibnEWOIFHBoiewhfoibEHNFOIBHNe ini adalah random text,jadi iya sudah gak tau mau ngetik apa yang penting di ketik saja ini adalah random text,jadi iya sudah gak tau mau ngetik apa yang penting di ketik saja ini adalah random text,jadi iya sudah gak tau mau ngetik apa yang penting di ketik saja ",
          textAlign: TextAlign.center,)),
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [Container(child: Row(
                children: [
                  Icon(Icons.star_outline),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                ],
              ),), SizedBox(width: 35),
              Container(child: Text("170 Komentar"),)],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(children: [Icon(Icons.menu_book), Text("PREP: "),Text("25 MIN")],),
                  Column(children: [Icon(Icons.menu_book), Text("Cook: "),Text("40 MIN")],),
                  Column(children: [Icon(Icons.menu_book), Text("PREP: "),Text("25 MIN")],),
                ],
              ),
            ),
          ),
          ElevatedButton(onPressed: (){
          Navigator.push( context,
          MaterialPageRoute(builder:(_)=> MyIngredients()));
          },child: Text("Show Ingredients"))
        ],
      ),
    );
  }
}

