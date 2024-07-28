class User {
  String name;
  String email;
  int age;
  bool isActive;

  User(this.name, this.email, this.age, this.isActive);

  void displayUserInfo() {
    print('Name: $name, Email: $email, Age: $age, Active: $isActive');
  }

  void toggleActiveStatus() {
    isActive = !isActive;
  }
}