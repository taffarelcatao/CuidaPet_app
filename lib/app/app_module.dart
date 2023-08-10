import 'package:cuidapet_mobile/app/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    super.binds(i);
  }

  @override
  void routes(r) {
    r.child('/', child: (_) => HomePage());
  }
}
