import 'package:lista_servicios/enums/kind_of_service.dart';

class Service {
  final bool accepted;
  final double cost;
  final DateTime date;
  final String deliveryAddress;
  final String description;
  final KindOfService kindOfService;

  Service(
      {this.accepted,
      this.cost,
      this.date,
      this.deliveryAddress,
      this.description,
      this.kindOfService});
}
