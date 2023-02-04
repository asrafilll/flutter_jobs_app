class User {
  final String id;
  final String email;
  final String password;
  final String name;
  final String goal;

  User({
    required this.id,
    required this.email,
    required this.password,
    required this.name,
    required this.goal,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    final id = json['id'];
    final email = json['email'];
    final password = json['password'];
    final name = json['name'];
    final goal = json['goal'];
    return User(
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
