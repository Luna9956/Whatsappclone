import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final String people;
  final String pics;

  const ChatScreen({required this.pics, required this.people, super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('$pics'), 
              radius: 20,
            ),
            SizedBox(width: 10),
            Text('$people'),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Icon(Icons.video_call),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.call)
              ],
            ),
          )
        ],
      ),
    );
  }
}
