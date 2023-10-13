import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  late String email;
  late String senha;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: TextFormField(
                  decoration: const InputDecoration(labelText: 'Email: '),
                  onChanged: (valor) {
                    setState(() {
                      email = valor;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: TextFormField(
                  decoration: const InputDecoration(labelText: 'Senha'),
                  onChanged: (valor) {
                    setState(() {
                      senha = valor;
                    });
                  },
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    print('Email: $email, senha: $senha');
                  },
                  child: const Text("Logar"))
            ],
          ),
        ),
      ),
    );
  }
}
