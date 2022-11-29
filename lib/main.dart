import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final faker = Faker();

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
              itemCount: 20,
              itemBuilder: ((context, index) {
                return ChatItem(
                  title: faker.person.name(),
                  subtitle: faker.lorem.sentence(),
                  imageUrl:
                      "https://i.pravatar.cc/300?img=${random.integer(70)}",
                );
              }))),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  const ChatItem(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 20),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
        backgroundColor: Colors.transparent,
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 20),
      ),
      subtitle: Text(
        subtitle,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 16),
      ),
      trailing: Text("10:20 PM"),
    );
  }
}
