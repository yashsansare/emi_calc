import 'package:emi_calc/emi.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      routes: {'/': (context) => EmiCalculator(),
      }
  ));
}