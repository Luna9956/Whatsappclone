import 'package:flutter/material.dart';
import 'package:whatsapp/chat.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    List<String> people = ['amna', 'ayesha', 'fatima', 'joker'];
    List<String> message = ['hello', 'hi', 'how', 'why'];
    List<String> pics = [
      'images/a.png',
      'images/b.jpg',
      'images/c.jpeg',
      'images/d.jpeg'
    ];
    return Scaffold(
      body: ListView.builder(
          itemCount: people.length,
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChatScreen(
                              people: people[index],
                              pics: pics[index],
                            )));
              },
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(pics[index]),
                ),
                title: Text('${people[index]}'),
                subtitle: Text('${message[index]}'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            );
          }),
    );
  }
}
