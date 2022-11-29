import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});
  final List<Map<String, String>> containerList = [
    {"name": "Ibuy", "message": "hati-hati di jalan ya", "time": "23:30"},
    {"name": "Dinda", "message": "i love you", "time": "23:23"},
    {"name": "Adyt", "message": "hahaha", "time": "21:23"},
    {"name": "Robert", "message": "rusa makan apa?", "time": "20:23"},
    {"name": "Popi", "message": "buset lu", "time": "19:23"},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text("Chat")),
            backgroundColor: Colors.black,
            titleTextStyle:
                GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 20)),
          ),
          body: ListView.builder(
            itemCount: containerList.length,
            itemBuilder: (context, index) {
              return ListTile(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                leading: CircleAvatar(
                  backgroundColor: Colors.black,
                ),
                title: Text(
                  containerList[index]["name"]!,
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  containerList[index]["message"]!,
                  style: TextStyle(fontSize: 16),
                ),
                trailing: Text(containerList[index]["time"]!),
              );
            },
          )),
    );
  }
}
