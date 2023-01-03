import 'package:flutter/material.dart';
import 'package:messages/core/core.dart';
import 'package:messages/ui/home/home.dart';
import 'package:messages/ui/login/widgets/button_continue.dart';
import 'package:messages/ui/login/widgets/change_button.dart';
import 'package:messages/ui/login/widgets/inputs.dart';
import 'package:messages/ui/login/widgets/primary_text.dart';
import 'package:messages/ui/login/widgets/social_buttons.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool register = true;
  bool loading = false;

  final Core core = Core.instance;
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  String _error = '';

  @override
  Widget build(BuildContext context) {
    return _card();
  }

  Widget _card() {
    return Card(
      elevation: 10,
      child: AnimatedContainer(
        duration: const Duration(seconds: 2),
        curve: Curves.elasticInOut,
        width: 300,
        child: _form(),
      ),
    );
  }

  Widget _form() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(height: 20),
        PrimaryText(text: register ? 'Registro' : 'Inicio de sesion'),
        const SizedBox(height: 20),
        const CircleAvatar(minRadius: 50, maxRadius: 50),
        Inputs(
          name: register ? _name : null,
          email: _email,
          password: _password,
        ),
        const SizedBox(height: 20),
        const SocialButtons(),
        const SizedBox(height: 20),
        ContinueButton(register: register, loading: loading, onTap: _onTap),
        TextButton(onPressed: () {}, child: const Text('Terms and conditions')),
        Text(_error, style: const TextStyle(fontSize: 10, color: Colors.red)),
        ChangeButton(text: register ? 'Iniciar' : 'Registro', onTap: _change),
        loading ? const LinearProgressIndicator() : const SizedBox.shrink(),
      ],
    );
  }

  void _change() => setState(() => register = !register);
  void _onTap() {
    _error = '';
    register ? _singUp.call() : _singIn.call();
    setState(() => loading = !loading);
  }

  Future<void> _singIn() async {
    LoginRequestData request = LoginRequestData(
      email: _email.text,
      passwored: _password.text,
    );
    final User? res = await core.authService.signIn(request: request);
    _final(res);
  }

  Future<void> _singUp() async {
    LoginRequestData request = LoginRequestData(
      name: _name.text,
      email: _email.text,
      passwored: _password.text,
    );
    final User? res = await core.authService.signUp(request: request);
    _final(res);
  }

  void _final(User? res) {
    if (res != null) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => Home()),
      );
    } else {
      _error = 'Ha ocurriro un error';
      loading = false;
      setState(() {});
    }
  }
}
