import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  static const String id = 'calls';
  const Calls({Key? key}) : super(key: key);

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: Color(0xff00a884),
                    foregroundColor: Colors.white,
                    child: Icon(Icons.link),
                  ),
                  title: Text(
                    'Create Call Link',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text('Share a link for your WhatsApp call'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'Recent',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 25,
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
                    subtitle: Row(
                      children: [
                        Icon(
                          Icons.call_made,
                          size: 15,
                        ),
                        Text('  Yesterday'),
                      ],
                    ),
                    trailing: Icon(Icons.phone),
                    iconColor: Color(0xff00a884),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff008069),
        child: const Icon(Icons.call_sharp),
        onPressed: () {},
      ),
    );
  }
}
