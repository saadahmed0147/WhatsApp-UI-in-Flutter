import 'package:flutter/material.dart';
import 'package:whatsapp_ui/calls.dart';
import 'package:whatsapp_ui/chats.dart';
import 'package:whatsapp_ui/groups.dart';
import 'package:whatsapp_ui/home.dart';
import 'package:whatsapp_ui/updates.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: Home.id,
      routes: {
        Home.id: (context) => const Home(),
        Chats.id: (context) => const Chats(),
        Groups.id: (context) => const Groups(),
        Updates.id: (context) => const Updates(),
        Calls.id: (context) => const Calls(),
      },
    );
  }
}
