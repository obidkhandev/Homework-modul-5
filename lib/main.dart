import 'package:flutter/material.dart';
import 'package:modul_5/ui_1/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HomeWork 5',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

int screenIndex = 0;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      const MyAppUi1(),
    ];
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        if (screenIndex + 1 < screens.length) {
          screenIndex++;
          setState(() {});
        }
      },
      child: const Icon(Icons.next_plan),
      ),
      body: screens[screenIndex],
    );
  }
}
