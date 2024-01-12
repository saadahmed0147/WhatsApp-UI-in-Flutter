import 'package:flutter/material.dart';
import 'package:whatsapp_ui/calls.dart';
import 'package:whatsapp_ui/chats.dart';
import 'package:whatsapp_ui/groups.dart';
import 'package:whatsapp_ui/updates.dart';

class Home extends StatefulWidget {
  static const String id = 'home';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff008069),
          foregroundColor: Colors.white,
          title: const Text('WhatsApp'),
          actions: [
            const Icon(Icons.camera_alt_outlined),
            const SizedBox(width: 20),
            const Icon(Icons.search),
            PopupMenuButton(
                icon: const Icon(Icons.more_vert),
                itemBuilder: (context) => [
                      const PopupMenuItem(
                        value: 1,
                        child: Text('New group'),
                      ),
                      const PopupMenuItem(
                        value: 2,
                        child: Text('New broadcast'),
                      ),
                      const PopupMenuItem(
                        value: 3,
                        child: Text('Linked devices'),
                      ),
                      const PopupMenuItem(
                        value: 4,
                        child: Text('Starred Messages'),
                      ),
                      const PopupMenuItem(
                        value: 5,
                        child: Text('Settings'),
                      ),
                    ]),
            // SizedBox(width: 20),
          ],
          bottom: const TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Color(0xff7cbeb2),
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 3,
            isScrollable: true,
            tabs: [
              SizedBox(
                width: 25,
                child: Tab(
                  child: Icon(
                    Icons.groups_sharp,
                    size: 30,
                  ),
                ),
              ),
              SizedBox(
                width: 110,
                child: Tab(
                  child: Text(
                    'Chats',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                width: 110,
                child: Tab(
                  child: Text(
                    'Updates',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                width: 110,
                child: Tab(
                  child: Text(
                    'Calls',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [
          Groups(),
          Chats(),
          Updates(),
          Calls(),
        ]),
      ),
    );
  }
}
