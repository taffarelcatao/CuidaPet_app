import 'package:cuidapet_mobile/app/modules/core/auth/auth_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CoreModule extends Module {
  // @override
  // List<Bind> get binds => [
  //   Bind.lazySingleton((i) => AuthStore(), export: true),
  // ];

  @override
  void binds(i) => [
        i.addLazySingleton((i) => AuthStore()),
        exportedBinds(i),
      ];
}

// class CoreModule extends Module {
//   @override
//   final List<Bind> binds = [
//     Bind.lazySingleton((i) => AuthStore(), export: true),
//   ];
// }
