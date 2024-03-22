import 'package:flutter/material.dart';
import 'package:mymoney/src/modules/login/components/register_link.dart';
import 'package:mymoney/src/router/app_router.dart';
import 'package:mymoney/src/shared/components/app_loading.dart';
import '../../shared/components/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Controladores para os campos de texto
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 5),
    ).then((_) => setState(() {
          isLoading = false;
        }));
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(
        child: AppLoading(),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // Campo de e-mail
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Digite seu e-mail',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 16.0),

              // Campo de senha
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  hintText: 'Digite sua senha',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 24.0),

              // Botão de Login
              CustomButton(
                text: 'ENTRAR',
                onPressed: () {
                  // Aqui adicionaremos a lógica de login
                },
                color: Colors.greenAccent,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRouter.register);
                  },
                  child: const RegisterLink()),
            ],
          ),
        ),
      );
    }
  }
}
