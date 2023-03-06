import 'package:flutter/material.dart';
import 'package:ticketbooking/screens/bottom_bar.dart';
import 'package:ticketbooking/utilities/app_styles.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: ThemeData(
      primaryColor: primary
    ),
    home: const BottomBar(),
  ));
}