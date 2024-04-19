class UserModel {
  final String username;
  final String email;
  final String phone;
  final String password;
  final String confirmpassword;
  final bool status;

  UserModel({required this.username,
    required this.email,
    required this.phone,
    required this.password,
    required this.confirmpassword,
    required this.status
  });

  factory UserModel.fromJson(jsonData){
    return UserModel(username: jsonData['name'],
        email: jsonData['email'],
        phone:jsonData['phone'],
        password: jsonData['password'],
        confirmpassword: jsonData['confirmpass'],
        status: jsonData['status']);
  }
}