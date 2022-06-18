import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

var estilo = ElevatedButton.styleFrom(
  elevation: 7,
  fixedSize: const Size(70, 35),
  primary: const Color.fromARGB(255, 68, 78, 100),
  onPrimary: const Color(0xFFFFFFFF),
);

class PaginaController extends GetxController {
  final RxString _numero = '0'.obs;
  String get numero => _numero.value;
  set numero(String value) => _numero.value = value;

  List bloqueado = [false, false, true];

  final listaBloqueado = RxList<bool>([]);

  @override
  void onInit() async {
    super.onInit();
    await initialState();
  }

  Future initialState() async {
    try {
      for (var n in bloqueado) {
        listaBloqueado.add(n);
      }
    } catch (e) {
      log("IdClass initialState Error:");
      log(e.toString());
      dynamic error = json.decode(e.toString());
      log(error.toString());
    }
  }

  button(String valor) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 25,
        right: 10,
      ),
      child: ElevatedButton(
        style: estilo,
        onPressed: () async {
          numero = valor;
        },
        child: Text(
          valor,
          style: const TextStyle(fontSize: 17, color: Colors.white),
        ),
      ),
    );
  }
}
