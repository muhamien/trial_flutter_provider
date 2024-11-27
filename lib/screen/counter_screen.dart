import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/counter_provider.dart';

class CounterScreen extends StatelessWidget {
  
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter with Provider')),
      body: Center(
        child: Consumer<CounterProvider>(
          builder: (context, counterProvider, child) {
            return Text(
              'Counter: ${counterProvider.counter}',
              style: const TextStyle(fontSize: 24),
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<CounterProvider>().increment(),
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () => context.read<CounterProvider>().decrement(),
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () => context.read<CounterProvider>().reset(),
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}