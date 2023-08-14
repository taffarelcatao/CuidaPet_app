import 'package:cuidapet_mobile/app/modules/auth/home/auth_home_page.dart';
import 'package:cuidapet_mobile/app/modules/auth/login/login_module.dart';
import 'package:cuidapet_mobile/app/modules/auth/register/register_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => AuthHomePage(authStore: Modular.get()));
    r.module('/login', module: LoginModule());
    r.module('/register', module: RegisterModule());
  }
}
