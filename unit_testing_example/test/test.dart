// Import the test package and Counter class

import 'package:test/test.dart';
import 'package:unit_testing_example/counterApp.dart';

void main() {
  test('Counter value should be incremented', () {
    final counter = Counter();

    counter.increment();
    counter.decrement();

    expect(counter.value, 1);
  });
}
