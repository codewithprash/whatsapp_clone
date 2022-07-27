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
      
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              iconSize: 25,
              splashRadius: 20,
              tooltip: 'Search',
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            PopupMenuButton<int>(
                splashRadius: 20,
                onSelected: (value) {
                  if (value == 0) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyWidget()),
                    );
                  } else if (value == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyWidget()),
                    );
                  } else if (value == 2) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyWidget()),
                    );
                  } else if (value == 3) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyWidget()),
                    );
                  } else if (value == 4) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyWidget()),
                    );
                  } else if (value == 5) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyWidget()),
                    );
                  }
                },
                tooltip: 'More options',
                itemBuilder: (context) => <PopupMenuEntry<int>>[
                      const PopupMenuItem<int>(
                        value: 0,
                        child: Text('New group'),
                      ),
                      const PopupMenuItem<int>(
                        value: 1,
                        child: Text('New broadcast'),
                      ),
                      const PopupMenuItem<int>(
                        value: 2,
                        child: Text('Linked devices'),
                      ),
                      const PopupMenuItem<int>(
                        value: 3,
                        child: Text('Starred messages'),
                      ),
                      const PopupMenuItem<int>(
                        value: 4,
                        child: Text('Payments'),
                      ),
                      const PopupMenuItem<int>(
                        value: 5,
                        child: Text('Settings'),
                      ),
                    ]),
          ],
          title: const Text('Whatsapp'),
          bottom: const TabBar(
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              indicatorWeight: 3,
              indicatorColor: Colors.white,
              tabs: [
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
            body:  Center(child: Text('chats',style: Theme.of(context).textTheme.headline4,)),
          ),
          Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.edit),
            ),
            body:  Center(child: Text('status',style: Theme.of(context).textTheme.headline4,)),
          ),
          Scaffold(
            floatingActionButton: FloatingActionButton(

              
              onPressed: () {},
              child: const Icon(Icons.add_call),
            ),
            body:  Center(child: Text('calls',style: Theme.of(context).textTheme.headline4,)),
          ),
        ]),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Coming soon',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
