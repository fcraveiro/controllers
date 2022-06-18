import '/menu.dart';
import '/paginas/pagina1.dart';
import 'package:get/get.dart';
import 'package:controllers/controllers/pagina_controller_binding.dart';

rotas() {
  return [
    GetPage(name: '/', page: () => const Menu()),
    GetPage(
        name: '/menu/', page: () => const Menu(), transition: Transition.zoom),
    GetPage(
        name: '/pagina1/',
        page: () => Pagina1(),
        binding: PaginaBinding(),
        transition: Transition.zoom),
  ];
}
