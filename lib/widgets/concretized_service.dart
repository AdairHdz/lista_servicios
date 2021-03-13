import 'package:flutter/material.dart';
import '../models/Service.dart';
import 'package:intl/intl.dart';

class ConcretizedService extends StatelessWidget {
  final Service service;

  ConcretizedService(this.service);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Theme.of(context).primaryColor,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(32)),
          child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(32)),
              child: Container(
                color: Colors.white,
                width: 50,
                height: 50,
                child: Image(
                  image: AssetImage("assets/images/verified.png"),
                ),
              ),
            ),
            title: Text(
              "Compra de víveres",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
            subtitle: Text(
              //service.date.toString(),
              DateFormat.yMd().add_jm().format(DateTime.now()),
              //"08/03/2020",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
            trailing: Text(
              "Concretado",
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 12),
            ),
          ),
        ));
  }
}
