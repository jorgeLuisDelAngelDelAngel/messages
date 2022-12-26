class Group {
  Group({
    required this.id,
    required this.name,
    required this.date,
    required this.userIds,
    this.image,
    this.description,
    this.messageIds,
    this.providedWords,
    this.files,
    this.guestIds,
  });

  factory Group.fromJson({required Map<String, dynamic> json}) {
    return Group(
      id: json['id'] as String,
      name: json['name'] as String,
      date: json['date'] as DateTime,
      userIds: json['user_ids'] as List<String>,
      image: json['image'] as String?,
      description: json['description'] as String?,
      messageIds: json['message_ids'] as List<String>?,
      providedWords: json['provided_words'] as List<String>?,
      files: json['files'] as List<String>?,
      guestIds: json['guest_ids'] as List<String>?,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'date': date,
      'user_ids': userIds,
      'image': image,
      'description': description,
      'message_ids': messageIds,
      'provided_words': providedWords,
      'files': files,
      'guest_ids': guestIds,
    };
  }

  String id;
  String name;
  String? description;
  String? image;
  DateTime date;
  List<String>? messageIds;
  List<String> userIds;
  List<String>? providedWords;
  List<String>? files;
  List<String>? guestIds;
}
