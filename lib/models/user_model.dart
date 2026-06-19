class UserModel {
  final String uid;
  final String fullName;
  final String email;
  final bool profileCompleted;

  UserModel({
    required this.uid,
    required this.fullName,
    required this.email,
    required this.profileCompleted,
  });

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'fullName': fullName,
      'email': email,
      'profileCompleted': profileCompleted,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'] ?? '',
      fullName: map['fullName'] ?? '',
      email: map['email'] ?? '',
      profileCompleted: map['profileCompleted'] ?? false,
    );
  }
}