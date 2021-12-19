import 'package:flutter/material.dart';
import 'package:trazfavela_desafio/view/history_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const ListTile(
          leading: Icon(Icons.person_outline),
          title: Text('Meu perfil'),
        ),
        ListTile(
          leading: Icon(Icons.history_edu),
          title: Text('Histórico'),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HistoryPage(),
            ),
          ),
        ),
        const ListTile(
          leading: Icon(Icons.location_on),
          title: Text('Cardápio'),
        ),
        const ListTile(
          leading: Icon(Icons.account_balance_wallet_rounded),
          title: Text('Carteira'),
        ),
        const ListTile(
          leading: Icon(Icons.history_edu),
          title: Text('Contato'),
        ),
        const ListTile(
          leading: Icon(Icons.settings),
          title: Text('Suporte'),
        ),
        const ListTile(
          leading: Icon(Icons.logout),
          title: Text('Log out'),
        ),
      ],
    );
  }
}
