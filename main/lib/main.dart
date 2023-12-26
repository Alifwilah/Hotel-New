import 'package:flutter/material.dart';
import 'package:main/cubit/app_cubit_logic.dart';
import 'package:main/cubit/app_cubits.dart';
// ignore: unused_import
import 'package:main/pages/detail_page.dart';
//import 'package:main/pages/navpages/main_page.dart';
// ignore: unused_import
import 'package:main/pages/welcome_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main/services/data_services.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue
      ),
      home: BlocProvider<AppCubits>(
        create: (context)=>AppCubits(
          data: DataServices(),
        ),
        child: AppCubitLogic(),
      )
    );
  }
}