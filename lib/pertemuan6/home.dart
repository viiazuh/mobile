import 'package:flutter/material.dart';
import 'package:flutter_application_1/pertemuan6/provider.dart';
import 'package:provider/provider.dart';

class Myhome6 extends StatefulWidget {
  const Myhome6({super.key});

  @override
  State<Myhome6> createState() => _Myhome6State();
}

class _Myhome6State extends State<Myhome6> {
  @override
  Widget build(BuildContext context) {
      var  prov6 = Provider.of<Provider6>(context);
    return Scaffold(
      appBar: AppBar(title:  Text("switches | drobdownB")),
      body: Padding(padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Dark Mode"),
            Switch(value: prov6.enableDarkMode, onChanged:(value)=>{prov6.gantiTema = value} )
            
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("pekerjaan"),
              DropdownButtonHideUnderline(child: 
              DropdownButton(
              elevation:2,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              items: prov6.listJob.map((jobname) => DropdownMenuItem(child: Padding(padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(jobname),),
              value: jobname,)).toList(),
              onChanged: (value){
                prov6.selectedJob =value;
              },))
            ],
          ),Text("pekerjaan: ${prov6.selectedJob}")
        ],
      ),),
      
    );
  }
}