import 'package:flutter/material.dart';
import 'package:trazfavela_desafio/model/orders_model.dart';
import 'package:trazfavela_desafio/service/order_service.dart';
import 'package:trazfavela_desafio/view/history_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FutureBuilder<List<OrdersModel>>(
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Column(
                    children: [
                      ClipOval(
                        child: Image.network(
                          snapshot.data![0].storeLogo,
                          height: 100,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          snapshot.data![0].storeName,
                          style: const TextStyle(
                              fontSize: 20,
                              color: Colors.black54,
                              fontWeight: FontWeight.w600),
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
              future: OrdersService().getOrders(),
            ),
            const ListTile(
              leading: Icon(Icons.person_outline),
              title: Text(
                'Meu perfil',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.history_edu),
              title: const Text(
                'Histórico',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                ),
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HistoryPage(),
                ),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.location_on),
              title: Text(
                'Cardápio',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.account_balance_wallet_rounded),
              title: Text(
                'Carteira',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.history_edu),
              title: Text(
                'Contato',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'Suporte',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                'Log out',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
