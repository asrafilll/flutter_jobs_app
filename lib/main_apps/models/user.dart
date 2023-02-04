class UserModel {
  final String id;
  final String email;
  final String password;
  final String name;
  final String goal;

  UserModel({
    required this.id,
    required this.email,
    required this.password,
    required this.name,
    required this.goal,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    final id = json['id'];
    final email = json['email'];
    final password = json['password'];
    final name = json['name'];
    final goal = json['goal'];
    return UserModel(
      id: id,
      email: email,
      password: password,
      name: name,
      goal: goal,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'password': password,
      'name': name,
      'goal': goal,
    };
  }
}
