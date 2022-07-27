import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF018169),
          primary: const Color(0xFF018169),
          secondary: const Color(0xFF018169),
        ),
        primaryColor: const Color(0xFF018169),
      ),
      home: const Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
 

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              splashRadius: 20,
              tooltip: 'Search',
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              splashRadius: 20,
              tooltip: 'More',
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          title: const Text('Whatsapp'),



          bottom: const TabBar(

          labelStyle: TextStyle(
            fontWeight: FontWeight.bold
          ),
          indicatorWeight: 3,
            indicatorColor: Colors.white, tabs: [
            
            Tab(
              text: 'CHATS',
            ),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'CALLS',
            )
          ]),
        ),
        body: TabBarView(children: [
       
          Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.message),
            ),
            body: const Center(child: Text('chats')),
          ),
          const Center(
            child: Text('status'),
          ),
          const Center(
            child: Text('calls'),
          )
        ]),
      ),
    );
  }
}
