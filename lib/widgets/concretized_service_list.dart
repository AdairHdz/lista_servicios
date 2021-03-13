import 'package:flutter/material.dart';
import 'package:lista_servicios/enums/kind_of_service.dart';
import "../models/Service.dart";
import "./concretized_service.dart";

class ConcretizedServiceList extends StatelessWidget {
  final List<Service> services = [
    Service(
        accepted: true,
        cost: 80.00,
        date: DateTime.now(),
        deliveryAddress: "Pedro Moreno #21",
        description: "2 cajas de Ibuprofeno",
        kindOfService: KindOfService.CompraDeViveres),
    Service(
        accepted: true,
        cost: 80.00,
        date: DateTime.now(),
        deliveryAddress: "Pedro Moreno #21",
        description: "2 cajas de Ibuprofeno",
        kindOfService: KindOfService.CompraDeDespensa),
    Service(
        accepted: true,
        cost: 80.00,
        date: DateTime.now(),
        deliveryAddress: "Pedro Moreno #21",
        description: "2 cajas de Ibuprofeno",
        kindOfService: KindOfService.CompraDeDespensa),
    Service(
        accepted: true,
        cost: 80.00,
        date: DateTime.now(),
        deliveryAddress: "Pedro Moreno #21",
        description: "2 cajas de Ibuprofeno",
        kindOfService: KindOfService.CompraDeViveres),
    Service(
        accepted: true,
        cost: 80.00,
        date: DateTime.now(),
        deliveryAddress: "Pedro Moreno #21",
        description: "2 cajas de Ibuprofeno",
        kindOfService: KindOfService.CompraDeDespensa),
    Service(
        accepted: true,
        cost: 80.00,
        date: DateTime.now(),
        deliveryAddress: "Pedro Moreno #21",
        description: "2 cajas de Ibuprofeno",
        kindOfService: KindOfService.CompraDeDespensa),
    Service(
        accepted: true,
        cost: 80.00,
        date: DateTime.now(),
        deliveryAddress: "Pedro Moreno #21",
        description: "2 cajas de Ibuprofeno",
        kindOfService: KindOfService.CompraDeViveres),
    Service(
        accepted: true,
        cost: 80.00,
        date: DateTime.now(),
        deliveryAddress: "Pedro Moreno #21",
        description: "2 cajas de Ibuprofeno",
        kindOfService: KindOfService.CompraDeDespensa),
    Service(
        accepted: true,
        cost: 80.00,
        date: DateTime.now(),
        deliveryAddress: "Pedro Moreno #21",
        description: "2 cajas de Ibuprofeno",
        kindOfService: KindOfService.CompraDeDespensa)
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            child: SizedBox(
              height: 500,
              child: ListView.builder(
                itemCount: services.length,
                itemBuilder: (buildContext, index) {
                  // ...services.map((service) => ConcretizedService(service))
                  return ConcretizedService(services[index]);
                },
              ),
            ),
          )),
    );
  }
}
