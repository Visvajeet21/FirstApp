import 'package:first_app/models/document_models.dart';
import 'package:first_app/readerscreens/reader_screen9.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(

    appBar: AppBar(
      title: const Text('FAQ'),
      backgroundColor: Colors.purple,
    ),
    //drawer: const NavigationDrawer(),
  );
}