import 'package:flutter_test/flutter_test.dart';
import 'package:testing_demo/src/providers/counter_provider.dart';
import 'package:testing_demo/src/views/counter.dart';

void main() {
  test("Counter increment and decrement testing", () async {
    final CounterProvider counterProvider = CounterProvider();

    // make sure initial value is set to 0 : output = 0
    expect(counterProvider.counter, 0);

    // run increment function to increase value by 1 : output = 1
    counterProvider.incrementCounter();
    expect(counterProvider.counter, 1);

    // run decrement function to decrease value by 1 : output = 0
    counterProvider.decrementCounter();
    expect(counterProvider.counter, 0);

    counterProvider.dispose();
  });
}
