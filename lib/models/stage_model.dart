// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Stage {
  final String title;
  final String status;
  final bool isDone;

  Stage({
    required this.title,
    required this.status,
    required this.isDone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'status': status,
      'isDone': isDone,
    };
  }

  factory Stage.fromMap(Map<String, dynamic> map) {
    return Stage(
      title: map['title'] as String,
      status: map['status'] as String,
      isDone: map['isDone'] as bool,
    );
  }

  factory Stage.fromJson(String source) =>
      Stage.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Stage(title: $title,\nstatus: $status,\nisDone: $isDone)';
}
