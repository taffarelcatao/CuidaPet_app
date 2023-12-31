part of '../login_page.dart';

class _LoginForm extends StatefulWidget {
  const _LoginForm({super.key});

  @override
  State<_LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<_LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CuidapetTextFormField(label: 'Login'),
          const SizedBox(
            height: 20,
          ),
          CuidapetTextFormField(
            label: 'Senha',
            obscureText: true,
          ),
          const SizedBox(
            height: 20,
          ),
          CuidapetDafultButton(label: 'Entrar', onpressd: () {})
        ],
      ),
    );
  }
}
