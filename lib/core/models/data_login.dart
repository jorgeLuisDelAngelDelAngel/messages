enum AuthProvider {
  password,
  facebook,
  google,
}

class LoginRequestData {
  LoginRequestData({
    this.provider = AuthProvider.password,
    this.email,
    this.passwored,
  });

  final AuthProvider provider;
  final String? passwored;
  final String? email;
}
