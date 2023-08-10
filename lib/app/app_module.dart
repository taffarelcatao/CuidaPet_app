import 'package:cuidapet_mobile/app/modules/auth/auth_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    super.binds(i);
  }

  @override
  void routes(r) {
    r.module('/auth', module: AuthModule());
  }
}
