import 'package:flutter/material.dart';

void main() {
  runApp(CallScreen());
}

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});
  @override
  Widget build(BuildContext context) {
    List<String> people = ['amna', 'ayesha', 'fatima', 'joker'];
    List<String> pics = [
      'images/a.png',
      'images/b.jpg',
      'images/c.jpeg',
      'images/d.jpeg'
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Calls',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView.builder(
            itemCount: people.length,
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(pics[index]),
                ),
                title: Text('${people[index]}'),
                trailing: Icon(Icons.call),
              );
            }));
  }
}
