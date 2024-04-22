import 'package:flutter/material.dart';

class Provider6 extends ChangeNotifier{
  bool _enableDarkMode =  false;

  bool get enableDarkMode => _enableDarkMode;

  set gantiTema (val){
    _enableDarkMode = val;
    notifyListeners();

  }
   var light = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue
   );
   var dark = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blue

   );

   String? _selectedJob = null;

   final List<String> _JobList = [
    "Mahasiswa",
    "dosen",
    "PNS",
    "Progamer",
    "UI/UX",
    "IT Consultan",
    "Mobile Devloper",

   ];
   List<String> get  listJob => List.unmodifiable(_JobList);
   
   String? get selectedJob => _selectedJob;

   set selectedJob(val){
    _selectedJob = val;
    notifyListeners();
   }
}