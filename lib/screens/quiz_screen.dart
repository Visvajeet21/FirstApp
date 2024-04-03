import 'package:first_app/models/document_models.dart';
import 'package:first_app/readerscreens/reader_screen9.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    //drawer: const NavigationDrawer(),
    appBar: AppBar(
      title: const Text('Quiz'),
      backgroundColor: Colors.purple,
    ),
  );
}