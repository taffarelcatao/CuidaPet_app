import 'package:cuidapet_mobile/app/core/ui/icons/cuidapet_icons.dart';
import 'package:cuidapet_mobile/app/core/ui/widgets/cuidapet_textform_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final testeEC = TextEditingController();
  final formKey = GlobalKey<FormState>();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              CuidapetTextFormField(
                label: 'Login',
                obscureText: false,
                controller: testeEC,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Valor Obrigatorio";
                  }
                  return null;
                },
              ),
              Text(testeEC.text),
              ElevatedButton(
                  onPressed: () {
                    formKey.currentState?.validate();
                    print(testeEC.text);
                  },
                  child: Text('Salvar')),
              Icon(
                CuidapetIcons.facebook,
              ),
              Icon(CuidapetIcons.google),
            ],
          ),
        ),
      ),
    );
  }
}
