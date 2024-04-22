import 'dart:html';

import 'package:flutter/material.dart';

class MyGridView2 extends StatefulWidget {
  const MyGridView2({super.key, required this.nomor, required this.judul, required this.kegiatan});
  final int nomor;
  final String judul;
  final String  kegiatan;

  @override
  State<MyGridView2> createState() => _MyGridView2State();
}

class _MyGridView2State extends State<MyGridView2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(15.0))
        ),
        child:  Column(children: [
          CircleAvatar(child: Text("${widget.nomor}"),),
          Text("${widget.judul}"),
          Text("${widget.kegiatan}")
        ],),
    );
  }
}