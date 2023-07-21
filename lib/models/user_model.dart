// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:math';

import 'package:todo/models/project_model.dart';

enum UserEnum {
  id,
  name,
  email,
  password,
  avatar,
  isVerified,
  isOnline,
  projects,
}

class UserModel {
  final String id;
  final String name;
  final String email;
  final String password;

  ///???
  final avatar;

  final bool? isVerified;
  final bool? isOnline;

  final List<Project>? projects;

  UserModel({
    required this.name,
    required this.id,
    required this.email,
    required this.password,
    required this.avatar,
    this.isVerified,
    this.isOnline,
    this.projects,
  });

  factory UserModel.fromMap(Map data) {
    return UserModel(
      name: data[UserEnum.name.name],
      id: data[UserEnum.id.name],
      email: data[UserEnum.email.name],
      password: data[UserEnum.password.name],
      avatar: data[UserEnum.avatar.name],
      isVerified: data[UserEnum.isVerified.name],
      isOnline: data[UserEnum.isOnline.name],
      projects: data[UserEnum.projects.name],
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'isVerified': isVerified,
      'isOnline': isOnline,
      'projects': projects,
    };
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  factory UserModel.dummy() {
    final int dummyId = Random().nextInt(32);
    return UserModel(
        name: "user $dummyId",
        id: dummyId.toString(),
        email: "email-$dummyId@h.com",
        password: "password",
        avatar: "avatar",
        isVerified: false,
        isOnline: false);
  }
}
