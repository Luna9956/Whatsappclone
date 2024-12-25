import 'package:flutter/material.dart';
import 'package:whatsapp/call.dart';
import 'package:whatsapp/communities.dart';
import 'package:whatsapp/home.dart';
import 'package:whatsapp/status.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text(
              'WhatsApp',
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(Icons.camera_alt_sharp),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.menu),
                  ],
                ),
              )
            ],
          ),
          body: TabBarView(
            children: [
              HomeScreen(),
              StatusScreen(),
              CommunitiesScreen(),
              CallScreen(),
            ],
          ),
          bottomNavigationBar: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.chat),
              text: 'Chats',
            ),
            Tab(
              icon: Icon(Icons.camera),
              text: 'Status',
            ),
            Tab(
              icon: Icon(Icons.people),
              text: 'Communities',
            ),
            Tab(
              icon: Icon(Icons.call),
              text: 'Calls',
            )
          ]),
        ),
      ),
    );
  }
}
