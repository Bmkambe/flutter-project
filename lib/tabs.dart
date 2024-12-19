import 'package:flutter/material.dart';

void main() {
  runApp(const Tabs());
}

class Tabs extends StatelessWidget {
  const Tabs({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner:false ,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.contact_emergency)),
                Tab(icon: Icon(Icons.photo_album)),
              ],
            ),
            title: const Text('Tabs'),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.forest),
              Icon(Icons.phone),
              Icon(Icons.camera),
            ],
          ),
        ),
      ),
    );
  }
}