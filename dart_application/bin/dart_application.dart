import 'package:dart_application/src/models/user.dart';
import 'package:dart_application/src/services/user_service.dart';

void main(List<String> arguments) {
  UserService userService = UserService();

  User user = User('min yul', 'minyul@gmail.com', 3, true);

  userService.addUser(user);
  userService.listAllUsers();

  User? foundUser = userService.findUserByEmail('john.doe@example.com');
  if (foundUser != null) {
    print('Found user:');
    foundUser.displayUserInfo();
  } else {
    print('User not found');
  }

  userService.removeUserByEmail('minyul@gmail.com');
  userService.listAllUsers();

  if (foundUser != null) {
    foundUser.toggleActiveStatus();
    foundUser.displayUserInfo();
  }
}
