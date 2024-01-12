import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  static const String id = 'chats';
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return const ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=400',
                ),
              ),
              title: Text(
                'Saad Ahmed',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('You have new messages'),
              trailing: Text('12:00 PM'),
            );
          }),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff008069),
        child: const Icon(Icons.message),
        onPressed: () {},
      ),
    );
  }
}
