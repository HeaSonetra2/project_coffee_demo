class OderProduct {
  final int id;
  final int productID;
  final int qty;
  final String name;
  final String imageUrl;
  final double deliveryFee;
  final List<Map<String, double>> sizeOption;
  final List<String> type;
  final bool isDelivery;
  String? address;
  String? addressInfo;

  OderProduct({required this.id, required this.productID, required this.qty, required this.name, required this.imageUrl, required this.deliveryFee, required this.sizeOption, required this.type, required this.isDelivery,this.address,this.addressInfo});
}
