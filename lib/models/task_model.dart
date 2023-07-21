// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:math';

import 'package:todo/models/stage_model.dart';
import 'package:todo/models/user_model.dart';

enum TaskEnum {
  title,
  startDate,
  dueDate,
  lastEditedDate,
  finishedDate,
  lastEditedBy,
  status,
  decsription,
  stages,
  people,
}

class Task {
  final String title;

  final DateTime startDate;
  final DateTime dueDate;
  final DateTime? lastEditedDate;
  final DateTime? finishedDate;

  final UserModel? lastEditedBy;

  final String status;
  final String description;

  final List<Stage>? stages;
  final List<UserModel>? people;

  Task({
    required this.title,
    required this.startDate,
    required this.dueDate,
    this.lastEditedDate,
    this.finishedDate,
    this.lastEditedBy,
    required this.status,
    required this.description,
    this.stages,
    this.people,
  });

  factory Task.fromMap(Map data) {
    return Task(
      title: data[TaskEnum.title.name],
      startDate: data[TaskEnum.startDate.name],
      dueDate: data[TaskEnum.dueDate.name],
      lastEditedDate: data[TaskEnum.lastEditedDate.name],
      finishedDate: data[TaskEnum.finishedDate.name],
      lastEditedBy: data[TaskEnum.lastEditedBy.name],
      status: data[TaskEnum.status.name],
      description: data[TaskEnum.decsription.name],
      stages: data[TaskEnum.stages.name],
      people: data[TaskEnum.people.name],
    );
  }

  factory Task.dummy() {
    final int dummTitleId = Random().nextInt(32);

    final DateTime dummyStartDate = DateTime(2023, 7, 17);
    final DateTime dummyDueDate = DateTime(2023, 8, 17);

    return Task(
      title: "title $dummTitleId",
      startDate: dummyStartDate,
      dueDate: dummyDueDate,
      lastEditedDate: null,
      finishedDate: null,
      lastEditedBy: null,
      status: "Not Started",
      description: "description",
      stages: null,
      people: null,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'startDate': startDate.millisecondsSinceEpoch,
      'dueDate': dueDate.millisecondsSinceEpoch,
      'lastEditedDate': lastEditedDate?.millisecondsSinceEpoch ?? 0,
      'finishedDate': finishedDate?.millisecondsSinceEpoch,
      'lastEditedBy': lastEditedBy?.toMap(),
      'status': status,
      'description': description,
      'stages': stages?.map((x) => x.toMap()).toList(),
      'people': people?.map((x) => x.toMap()).toList(),
    };
  }

  String toJson() => json.encode(toMap());

  factory Task.fromJson(String source) =>
      Task.fromMap(json.decode(source) as Map<String, dynamic>);
}
