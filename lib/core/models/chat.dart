class Chat {
  Chat({
    required this.id,
    required this.userIds,
    this.messageIds,
    this.providedWords,
    this.files,
    this.guestIds,
  });

  factory Chat.fromJson({required Map<String, dynamic> json}) {
    return Chat(
      id: json['id'] as String,
      messageIds: json['message_ids'] as List<String>?,
      userIds: json['user_ids'] as List<String>,
      providedWords: json['provided_words'] as List<String>?,
      files: json['files'] as List<String>?,
      guestIds: json['guest_ids'] as List<String>?,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'message_ids': messageIds,
      'user_ids': userIds,
      'provided_words': providedWords,
      'files': files,
      'guest_ids': guestIds,
    };
  }

  String id;
  List<String>? messageIds;
  List<String> userIds;
  List<String>? providedWords;
  List<String>? files;
  List<String>? guestIds;
}
