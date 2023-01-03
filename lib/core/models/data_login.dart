enum AuthProvider {
  password,
  facebook,
  google,
}

class LoginRequestData {
  LoginRequestData({
    this.name,
    this.provider = AuthProvider.password,
    this.email,
    this.passwored,
    this.photo,
  });

  final AuthProvider provider;
  final String? name;
  final String? passwored;
  final String? email;
  final dynamic photo;
}
