import 'package:flutter/material.dart';
import 'package:flutter_application_1/pertemuan3/MyReuseableView.dart';
import 'Todo.dart';

class myHome extends StatefulWidget {
  const myHome ({super.key});

  @override
  State<myHome> createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {
  List<TodoData> listitem = [];
  @override
  Widget build(BuildContext context) {
    TextEditingController tv1 = TextEditingController();
    TextEditingController tv2 = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text('Todos'),),
      body:  Column(
       children: [
            Row(
            children: [
              Expanded(flex:1 ,child: Icon(Icons.text_snippet_outlined)),
                  Expanded( flex:2, child: Text("Kegiatan")),
                      Expanded(flex:7, child: TextField(controller: tv1 ,decoration: InputDecoration(border: OutlineInputBorder(),hintText: "judul kegiatan"),))
            ],
          ),
          const Row(
            children: [
              Expanded(flex:1 ,child: Icon(Icons.format_align_justify)),
                  Expanded( flex:2, child: Text("Keterangan ")),
                      Expanded(flex:7,child:SizedBox())
        ],
        
          ),
           Row(
            children: [
              Expanded(flex:1 ,child: SizedBox(),),
                  Expanded( flex:9, child: TextField(controller: tv2,maxLines:5, 
                  decoration: InputDecoration(border: OutlineInputBorder()),),)
        ],
          // ),
          // Row(
          //   children: [
          //     Expanded(flex:1,child: Icon(Icons.date_range)),
          //      Expanded(flex:4, child: Text("Tanda Mulai",style: TextStyle(fontWeight: FontWeight.bold,),)),
          //       Expanded(flex: 1,child: Icon(Icons.date_range_rounded)),
          //        Expanded(flex: 4,child: Text("Tanda Selesai",style: TextStyle(fontWeight: FontWeight.bold),)),

          //   ],
          // ),
          //  Row(
          //   children: [
          //      Expanded(flex: 4,child: Padding(
          //        padding: EdgeInsets.all(8.0),
          //        child: TextField (decoration: InputDecoration(border: OutlineInputBorder(),hintText: "20-030-2023"),),
          //      ),),
          
          //            Expanded(flex: 4,child: Padding(
          //              padding: EdgeInsets.all(8.0),
          //              child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),hintText: "20-030-2023"),),
          //            ),)
          // ]
          //  ), Row(
          //   children: [Expanded(flex:1 ,child: Icon(Icons.call)),
          //      Expanded(flex: 4,child: Padding(
          //        padding: EdgeInsets.all(8.0),
          //        child: TextField (decoration: InputDecoration(border: OutlineInputBorder(),hintText: "+62"),),
          //      ),),
          
          //            Expanded(flex: 4,child: Padding(
          //              padding: EdgeInsets.all(8.0),
          //              child: TextField(decoration: InputDecoration(border: OutlineInputBorder()),),
          //            ),)
          // ]
          //  ), Row(
          //   children: [
          //     Expanded(flex:1 ,child: Icon(Icons.date_range)),
          //             Expanded(flex:7, child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Tanggal-lahir",),))
          //   ],
        ),Row(
          children: [Expanded(flex:5 ,child:Padding(padding: EdgeInsets.all(8.0),
          child: OutlinedButton(onPressed: (){setState(() {
            listitem.add(TodoData(tv1.text, tv2.text));
            tv1.text = "";
            tv2.text= "";
          });}, child: Text("batal")),),),

          Expanded(flex:5 ,child:Padding(padding: EdgeInsets.all(8.0),
          child: ElevatedButton(onPressed: (){setState(() {
            listitem.add(TodoData(tv1.text, tv2.text));
            tv1.text ="";
            tv2.text="";
          });}, child: Text("Simpan")),),)
          
        ],
        ),Expanded(child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 8.0,crossAxisSpacing: 8.0, ), itemCount:listitem.length,
          itemBuilder:(context, index) => MyGridView2(nomor: index+1, judul: listitem[index].judul!, kegiatan: listitem[index].keterangan!),),),
       ]
      ),
    );
  }
}