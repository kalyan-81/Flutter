import 'package:api_calls_unit_testing_with_mocktail/model/user.dart';
import 'package:api_calls_unit_testing_with_mocktail/userRepositoryMocktail.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';

class MockHTTPClient extends Mock implements Client {}
//class MockHTTPClient extends Mock implements UserRepository {}

void main() {
  late UserRepository userRepository;
  late MockHTTPClient mockHTTPClient;
  setUp(() {
    mockHTTPClient = MockHTTPClient();
    userRepository = UserRepository(mockHTTPClient);
  });

  test(
      'given userRepository class when getUser function is called and status code==200',
      () async {
    // Mock mockUR = MockuserRepository();
    //UserRepository repo = UserRepository(mockUR);
    when(
      () => mockHTTPClient.get(
        Uri.parse('https://jsonplaceholder.typicode.com/users/1'),
      ),
    ).thenAnswer(
      (invocation) async {
        return await Response('''{
  "id": 1,
  "name": "Leanne Graham",
  "username": "Bret",
  "email": "Sincere@april.biz",
  
  
  "phone": "1-770-736-8031 x56442",
  "website": "hildegard.org"
 
} ''', 200);
      },
    );
    //Act
    final user = userRepository.getUsers();
    //assert
    expect(user, isInstanceOf<Future<User>>());
  });

  test(
      'given userRepository class when getUser function is called and status code is not 200 it should show some error',
      () async {
    when(
      () => mockHTTPClient.get(
        Uri.parse('https://jsonplaceholder.typicode.com/users/1'),
      ),
    ).thenAnswer(
      (invocation) async {
        return await Response('''{
 
} ''', 500);
      },
    );
    //act
    final user = userRepository.getUsers();
    // assert
    expect(user, throwsException);
  });
}
