import 'package:bill/screen/home/view/biilpage.dart';
import 'package:bill/screen/home/view/home.dart';
import 'package:flutter/material.dart';

double sum = 0;
double total = 0;

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => home(),
        '/bill':(context) => billpage(),
      },
    ),
  );
}