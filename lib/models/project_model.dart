// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:todo/models/task_model.dart';
import 'package:todo/models/user_model.dart';

class Project {
  final String projectName;
  final String icon;

  /// between 0.0 -> 1.0
  final double progress;

  final List<Task> tasks;
  final List<UserModel> people;
  Project({
    required this.projectName,
    required this.icon,
    required this.progress,
    required this.tasks,
    required this.people,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectName': projectName,
      'icon': icon,
      'progress': progress,
      'tasks': tasks.map((x) => x.toMap()).toList(),
      'people': people.map((x) => x.toMap()).toList(),
    };
  }

  factory Project.fromMap(Map<String, dynamic> map) {
    return Project(
      projectName: map['projectName'] as String,
      icon: map['icon'] as String,
      progress: map['progress'] as double,
      tasks: List<Task>.from(
        (map['tasks'] as List<int>).map<Task>(
          (x) => Task.fromMap(x as Map<String, dynamic>),
        ),
      ),
      people: List<UserModel>.from(
        (map['people'] as List<int>).map<UserModel>(
          (x) => UserModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  factory Project.fromJson(String source) =>
      Project.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Project(projectName: $projectName,\nicon: $icon,\nprogress: $progress,\ntasks: $tasks,\npeople: $people)';
  }
}
