enum UserEnum {
  id,
  name,
  email,
  password,
  avatar,
  isVerified,
  isOnline,
}

class UserModel {
  final String id;
  final String name;
  final String email;
  final String password;

  ///???
  final avatar;

  final bool isVerified;
  final bool isOnline;

  UserModel({
    required this.name,
    required this.id,
    required this.email,
    required this.password,
    required this.avatar,
    required this.isVerified,
    required this.isOnline,
  });

  factory UserModel.fromJson(Map data) {
    return UserModel(
      name: data[UserEnum.name.name],
      id: data[UserEnum.id.name],
      email: data[UserEnum.email.name],
      password: data[UserEnum.password.name],
      avatar: data[UserEnum.avatar.name],
      isVerified: data[UserEnum.isVerified.name],
      isOnline: data[UserEnum.isOnline.name],
    );
  }
}
