import 'package:counterapp_testing/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Given Counter Class Intiated its value should be 0', () {
    //Arrange: normally initializing the counter(setUp in other test cases)

    Counter counter = Counter();

    // Act : nothing but getting the result

    int result = counter.countValue;

    // Assert: nothing but checking the actual value and expected value

    expect(result, 0);
  });
  test(
      'given counter class increment method invoked the the count value should be 1',
      () {
    //Arrange: normally initializing the counter(setUp in other test cases)

    Counter counter = Counter();

    // Act : nothing but getting the result
    counter.incrementCount();

    int result = counter.countValue;

    // Assert: nothing but checking the actual value and expected value

    expect(result, 1);
  });
}
