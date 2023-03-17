import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HookLearn extends HookWidget {
  const HookLearn({super.key});

  @override
  Widget build(BuildContext context) {
    final color = useState(Colors.blue);

    return MaterialApp(
      title: 'Flutter Hooks Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Hooks learn"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                width: 200,
                height: 200,
                color: color.value,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  color.value =
                      color.value == Colors.blue ? Colors.yellow : Colors.blue;
                },
                child: const Text('Change Color'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
