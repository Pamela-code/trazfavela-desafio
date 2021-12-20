import 'package:trazfavela_desafio/model/orders_model.dart';

import 'package:flutter/material.dart';
import 'package:trazfavela_desafio/service/order_service.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  bool isReverse = false;

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
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Total de pedidos: ',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black45,
                        ),
                      ),
                      Text(
                        snapshot.data!.length.toString(),
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Expanded(
                    child: ListView.builder(
                      reverse: isReverse,
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
                              title: Text(
                                snapshot.data![index].storeName,
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                ),
                              ),
                              subtitle: Column(
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        'Id do pedido: ',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black45,
                                        ),
                                      ),
                                      Text(
                                        snapshot.data![index].id.toString(),
                                        style: const TextStyle(
                                          fontSize: 18,
                                          color: Colors.black45,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        'Cliente: ',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black45,
                                        ),
                                      ),
                                      Text(
                                        snapshot.data![index].clientName,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          color: Colors.black45,
                                        ),
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
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isReverse = !isReverse;
                      });
                    },
                    child: Text(
                      isReverse ? 'Crescente' : 'Decrescente',
                      style: const TextStyle(
                        color: Color(0xffff7715),
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
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
