class OrdersModel {
  final int id;
  final String clientName;
  final String storeName;
  final String storeLogo;

  OrdersModel(
      {required this.id,
      required this.clientName,
      required this.storeName,
      required this.storeLogo});
}
