import 'package:calculator_testing/calculator.dart';
import 'package:test/test.dart';

void main() {
  test('addition of 2 and 3', () {
    final calculator = new Calculator();
    int result = calculator.addition(2, 3);

    expect(result, 5);
  });
}

// void main() {
//   group('group of additions\n', () {
//     test('testing addition of 3 and 2', () {
//       final calculator = Calculator();

//       int result = calculator.addition(3, 2);
//       expect(result, 5);
//     });

//     test('testing addition of 5 and 10', () {
//       final calculator = Calculator();

//       int result = calculator.addition(3, 2);
//       expect(result, 5);
//     });
//   });

//   group('group of substractions\n', () {
//     test('testing substraction of 3 and 2', () {
//       final calculator = Calculator();

//       int result = calculator.substraction(3, 2);
//       expect(result, 1);
//     });

//     test('testing substraction of 5 and 10', () {
//       final calculator = Calculator();

//       int result = calculator.substraction(5, 10);
//       expect(result, -5);
//     });
//   });

//   group('group of multiplications\n', () {
//     test('testing mutliplication of 3 and 2', () {
//       final calculator = Calculator();

//       int result = calculator.multiplication(3, 2);
//       expect(result, 6);
//     });

//     test('testing multiplication of 5 and 10', () {
//       final calculator = Calculator();

//       int result = calculator.multiplication(5, 10);
//       expect(result, 50);
//     });
//   });

//   group('group of divisions\n', () {
//     test('testing division of 3 and 2', () {
//       final calculator = Calculator();

//       double result = calculator.division(3, 2);
//       expect(result, 3 / 2);
//     });

//     test('testing division of 5 and 10', () {
//       final calculator = Calculator();

//       double result = calculator.division(5, 10);
//       expect(result, 5 / 10);
//     });
//   });
// }
