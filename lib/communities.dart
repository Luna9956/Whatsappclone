import 'package:flutter/material.dart';

void main() {
  runApp(CommunitiesScreen());
}

class CommunitiesScreen extends StatelessWidget {
  const CommunitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Communities',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(children: [
        ListTile(
          leading: Container(
            width: 30,
            height: 30,
            color: Colors.grey,
            child: Icon(Icons.people),
          ),
          title: Text('New Communities'),
        ),
      ]),
    );
  }
}
