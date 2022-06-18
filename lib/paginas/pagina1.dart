import 'package:controllers/controllers/pagina_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Pagina1 extends StatelessWidget {
  Pagina1({Key? key}) : super(key: key);
  final PaginaController _pagina = Get.find<PaginaController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 65,
            ),
            Wrap(
              children: [
                _pagina.button('1'),
                _pagina.button('2'),
                _pagina.button('3'),
                _pagina.button('4'),
                _pagina.button('5'),
                _pagina.button('6'),
                _pagina.button('7'),
                _pagina.button('8'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45),
              child: Obx(
                () => Text(
                  _pagina.numero,
                  style: const TextStyle(fontSize: 17, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
