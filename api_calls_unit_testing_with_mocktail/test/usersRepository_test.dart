import 'package:api_calls_unit_testing_with_mocktail/model/user.dart';
import 'package:api_calls_unit_testing_with_mocktail/usersRepository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late UserRepository userRepository;
  setUp(() {
    userRepository = UserRepository();
  });

  test(
      'given userRepository class when getUser function is called and status code==200',
      () async {
    final user = await userRepository.getUsers();

    expect(user, isA<User>());
  });
}
