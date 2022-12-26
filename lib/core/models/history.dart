class History {
  History({
    required this.id,
    required this.userId,
    required this.files,
    required this.date,
  });

  factory History.fromJson({required Map<String, dynamic> json}) {
    return History(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      files: json['files'] as List<String>,
      date: json['date'] as DateTime,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'user_id': userId,
      'files': files,
      'date': date,
    };
  }

  String id;
  String userId;
  List<String> files;
  DateTime date;
}
