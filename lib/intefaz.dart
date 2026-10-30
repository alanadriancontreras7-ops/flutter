
import 'api.dart';
import 'package:flutter/material.dart';

class mostraradso {
  adanies(BuildContext context) {
    return buscarutadso().then((r) {
      showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Scaffold(
            appBar: AppBar(title: Text('API ADSO 2999380')),
            body: ListView.builder(
              itemCount: r.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(r[index].name),
                  leading: Text(r[index].id.toString()),
                );
              },
            ),
          );
        },
      );
    });
  }
}