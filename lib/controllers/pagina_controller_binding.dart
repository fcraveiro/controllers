import 'package:controllers/controllers/pagina_controller.dart';
import 'package:get/get.dart';

class PaginaBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaginaController>(() => PaginaController());
  }
}
