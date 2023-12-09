import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colors.blue,
          onPrimary: Colors.white,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const CounterHome(),
    );
  }
}

class CounterHome extends StatefulWidget {
  const CounterHome({super.key});

  @override
  State<CounterHome> createState() => _CounterHomeState();
}

class _CounterHomeState extends State<CounterHome> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Counter App')),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(2),
          child: Container(
            color: Colors.grey.withOpacity(0.3),
            height: 3,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white.withOpacity(.8),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the counter the number of times'),
            Text(
              '$counter',
              style: const TextStyle(
                fontSize: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
