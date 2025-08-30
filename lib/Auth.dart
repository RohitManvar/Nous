class AuthUser {
  String id;
  String user;
  String pass;

  AuthUser({
    required this.id,
    required this.user,
    required this.pass,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user': user,
      'pass': pass,
    };
  }

  factory AuthUser.fromJson(Map<String, dynamic> json) {
    return AuthUser(
      id: json['id'],
      user: json['user'],
      pass: json['pass'],
    );
  }
}