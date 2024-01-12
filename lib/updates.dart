import 'package:flutter/material.dart';

class Updates extends StatefulWidget {
  static const String id = 'updates';
  const Updates({super.key});

  @override
  State<Updates> createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 20),
                child: Text(
                  'Status',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: Stack(
                    alignment: const AlignmentDirectional(1.5, 1.1),
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=400'),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(30)),
                        child: const CircleAvatar(
                          radius: 12,
                          backgroundColor: Color(0xff00a884),
                          child: Icon(
                            Icons.add_rounded,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  title: const Text(
                    'My status',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: const Text('Tap to add status update'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'Recent updates',
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
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xff36b86c),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      child: const CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=400',
                        ),
                      ),
                    ),
                    title: const Text(
                      'Saad Ahmed',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text('1 hour ago'),
                    iconColor: const Color(0xff00a884),
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
        child: const Icon(Icons.camera_alt),
        onPressed: () {},
      ),
    );
  }
}
