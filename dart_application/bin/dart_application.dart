import 'package:dart_application/dart_application.dart' as dart_application;
import 'package:dart_application/src/user.dart';

void main(List<String> arguments) {
  print('Hi zero and minyul');
  User user = User('min yul', 'minyul@gmail.com');

  print(user.email);
}
