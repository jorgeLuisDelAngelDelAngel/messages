class User {
  User({
    required this.id,
    required this.name,
    required this.active,
    this.image,
    this.phone,
    this.email,
    this.state,
    this.bio,
  });

  factory User.fromJson({required Map<String, dynamic> json}) {
    return User(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      state: json['state'] as String?,
      bio: json['bio'] as String?,
      active: json['active'] as bool,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'image': image,
      'phone': phone,
      'email': email,
      'state': state,
      'bio': bio,
      'active': active,
    };
  }

  String id;
  String name;
  String? image;
  String? phone;
  String? email;
  String? state;
  String? bio;
  bool active;
}
