import 'package:flutter/material.dart';
import 'package:job_finder/pages/home.dart';
import 'package:job_finder/pages/job_detail.dart';
import 'package:job_finder/pages/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Job finder app',
      debugShowCheckedModeBanner: false,
      home: const Home(),
      routes: {
        Home.id:(context)=>const Home(),
        Search.id:(context)=>const Search(),
        Job_detail.id:(context)=>const Job_detail(),
      },
    );
  }
}