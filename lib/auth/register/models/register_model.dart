class RegisterModel {
  final String? id;
  final String username;
  final String email;
  final String password;

  RegisterModel(
      {this.id,
      required this.username,
      required this.email,
      required this.password});

  toJson() {
    return {'username': username, 'email': email, 'password': password};
  }
}
