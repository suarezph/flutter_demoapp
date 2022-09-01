class DemoModel {
  final int id;
  final String email;
  final String firstname;
  final String lastname;
  final String avatar;
  String? error;

  DemoModel({
    required this.id,
    required this.email,
    required this.firstname,
    required this.lastname,
    required this.avatar,
    this.error,
  });

  factory DemoModel.fromJson(Map<String, dynamic> json) {
    return DemoModel(
        id: json['id'],
        email: json['email'],
        firstname: json['first_name'] ?? 'First Name',
        lastname: json['last_name'] ?? 'Last Name',
        avatar: json['avatar'] ??
            'https://img.freepik.com/free-vector/illustration-user-avatar-icon_53876-59');
  }

  // DemoModel.withError(String errorMessage) {
  //   error = errorMessage;
  // }
}
