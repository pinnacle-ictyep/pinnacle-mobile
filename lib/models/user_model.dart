class User {
  String name;
  String email;
  String phone;
  String password;
  String token;
  String confirmPassword;
  String renewalToken;

  User(
      {required this.name,
      required this.email,
      required this.phone,
      required this.password,
      required this.confirmPassword,
      required this.token,
      required this.renewalToken});

  factory User.fromJson(Map<String, dynamic> responseData) {
    return User(
        name: responseData['name'],
        email: responseData['email'],
        phone: responseData['phone'],
        password: responseData['password'],
        confirmPassword: responseData['confirm Password'],
        token: responseData['access_token'],
        renewalToken: responseData['renewal_token']);
  }
}
