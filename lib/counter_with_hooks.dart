import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CounterApp2 extends HookWidget {
  const CounterApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = useState(0);

    void _incrementCounter() {
      counter.value++;
    }

    void _decrementCounter() {
      counter.value--;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Counter value:',
            ),
            Text(
              '${counter.value}',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _decrementCounter,
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
