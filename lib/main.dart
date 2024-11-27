import 'package:flutter/material.dart';
import 'package:flutter_demo_1/screen/counter_screen.dart';
import 'package:provider/provider.dart';
import 'provider/counter_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const CounterScreen(),
    );
  }
}