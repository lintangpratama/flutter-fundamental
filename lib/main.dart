import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  final List<Widget> containerList = List.generate(
      100,
      (index) => Text(
            (index + 1).toString(),
            style: TextStyle(fontSize: 20 + double.parse(index.toString())),
          ));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text("My App")),
            backgroundColor: Colors.black,
            titleTextStyle:
                GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 20)),
          ),
          body: ListView.builder(
            itemCount: containerList.length,
            itemBuilder: (context, index) {
              return containerList[index];
            },
          )),
    );
  }
}
