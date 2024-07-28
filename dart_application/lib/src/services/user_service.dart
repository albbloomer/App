// import '../models/user.dart';
import '../models/user.dart';

class UserService {
  List<User> users = [];

  void addUser(User user) {
    users.add(user);
    print('User added: ${user.name}');
  }

  void removeUserByEmail(String email) {
    users.removeWhere((user) => user.email == email);
    print('User removed with email: $email');
  }

  void listAllUsers() {
    print('Listing all users:');
    for (var user in users) {
      user.displayUserInfo();
    }
  }

  User? findUserByEmail(String email) {
    for (var user in users) {
      if (user.email == email) {
        return user;
      }
    }
    return null;
  }
}