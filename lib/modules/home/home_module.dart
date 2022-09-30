import 'package:flutter_modular/flutter_modular.dart';
import 'package:sinaxys_challenge/modules/home/views/pages/home_page.dart';
import 'package:sinaxys_challenge/modules/home/views/pages/second_page.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => super.binds;

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => const HomePage()),
        ChildRoute('/second_page', child: (_, __) => const SecondPage()),
      ];
}
