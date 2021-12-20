import 'package:trazfavela_desafio/model/orders_model.dart';

import 'package:flutter/material.dart';
import 'package:trazfavela_desafio/service/order_service.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff7715),
        centerTitle: true,
        title: const Text('TrazFavela - Desafio'),
      ),
      body: FutureBuilder<List<OrdersModel>>(
        future: OrdersService().getOrders(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(
              children: [
                Row(
                  children: [
                    const Text('Total de pedidos: '),
                    Text(
                      snapshot.data!.length.toString(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: snapshot.data!.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                            leading: ClipOval(
                              child: Image.network(
                                  snapshot.data![index].storeLogo),
                            ),
                            title: Text(snapshot.data![index].storeName),
                            subtitle: Column(
                              children: [
                                Row(
                                  children: [
                                    const Text('Id do pedido: '),
                                    Text(
                                      snapshot.data![index].id.toString(),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Text('Cliente: '),
                                    Text(
                                      snapshot.data![index].clientName,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          )
                        ],
                      );
                    },
                  ),
                ),
              ],
            );
          } else {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Center(
                  child: CircularProgressIndicator(),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
