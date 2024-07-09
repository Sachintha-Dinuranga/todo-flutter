import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "TaskFlow",
          style: GoogleFonts.roboto(
              textStyle:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 26)),
        ),
        centerTitle: true,
      ),
    );
  }
}
