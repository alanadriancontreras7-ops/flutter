import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:http/http.dart' as http;

Future<List<ruta>> buscarutadso() async {
  final direccion = Uri.parse("https://www.dragonball-api.com/api");

  final respuesta = await http.get(direccion);

  return compute(pasarInfo, respuesta.body);
}

List<ruta> pasarInfo(String respuesta) {
  final pasar = json.decode(respuesta).cast<Map<String, dynamic>>();

  return pasar.map<ruta>((json) => ruta.fromJson(json)).toList();
}

class ruta {
  final id;

  final postId;

  final name;
  final email;
  final body;

  ruta({this.id, this.postId, this.name, this.email, this.body});

  factory ruta.fromJson(Map<String, dynamic> json) {
    return ruta(
      id: json["id"],
      postId: json["postId"],
      name: json["name"],
      email: json["email"],
      body: json["body"],
    );
  }
}