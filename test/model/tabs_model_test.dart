import 'package:flutter_test/flutter_test.dart';
import 'package:trazfavela_desafio/model/tabs_model.dart';

void main() {
  test('Deve retornar 3', () async {
    final tab = TabsModel(selectedTab: 2);
    tab.changeTab(3);
    expect(tab.selectedTab, 3);
  });
}
