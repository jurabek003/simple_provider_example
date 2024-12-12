import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_provide_example/provide/counter_view_model.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Provider Screen",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "${context.watch<CounterViewModel>().count}",
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            context.read<CounterViewModel>().incriment();
          },
          child: const Icon(Icons.add)),
    );
  }
}
