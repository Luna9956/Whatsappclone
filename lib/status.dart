import 'package:flutter/material.dart';

void main() {
  runApp(StatusScreen());
}

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> people = ['Amna', 'Ayesha', 'Fatima', 'Joker'];
    List<String> pics = [
      'images/a.png',
      'images/b.jpg',
      'images/c.jpeg',
      'images/d.jpeg'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Status',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('images/a.png'),
            ),
            title: Text('My Status'),
            subtitle: Text('Add to my status'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.camera_alt_outlined),
                SizedBox(width: 20),
                Icon(Icons.edit),
              ],
            ),
          ),
          Divider(
            thickness: 1,
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(pics[index]),
                  ),
                  title: Text(people[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
