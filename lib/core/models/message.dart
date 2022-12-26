class Message {
  Message({
    required this.id,
    required this.date,
    this.text,
    this.file,
    this.messageId,
  });

  factory Message.fromJson({required Map<String, dynamic> json}) {
    return Message(
      id: json['id'] as String,
      date: json['date'] as DateTime,
      text: json['text'] as String?,
      file: json['file'] as String?,
      messageId: json['message_id'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'date': date,
      'text': text,
      'file': file,
      'message_id': messageId,
    };
  }

  String id;
  DateTime date;
  String? text;
  String? file;
  String? messageId;
}
