class User {
  String name;
  String email;

  User(this.name, this.email);

  void displayUserInfo() {
    print('Name: $name, Email: $email');
  }
}