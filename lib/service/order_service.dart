import 'package:dio/dio.dart';
import '../model/orders_model.dart';

class OrdersService {
  final url = 'https://dev-trazfavela.herokuapp.com/api/v1/mock/pedidos/';
  final dio = Dio();

  Future<List<OrdersModel>> getOrders() async {
    final response = await dio.get(url);
    final body = response.data as List;
    final orders = body
        .map(
          (map) => OrdersModel(
              id: map['id'],
              clientName: map['cliente'],
              storeName: map['estabelecimento'],
              storeLogo: map['imagem']),
        )
        .toList();
    orders.sort((a, b) => a.id.compareTo(b.id));

    return orders;
  }
}
