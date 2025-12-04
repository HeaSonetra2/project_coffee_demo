class ProductDetail {
  final int id;
  final int productId;
  final String name;
  final String des;
  final double rating;
  final String imageUrl;
  final List<Map<String, double>> sizeOption;
  final List<String> type;
  final bool isDelivery;

  ProductDetail({required this.id, required this.productId, required this.name, required this.des, required this.rating, required this.imageUrl, required this.sizeOption, required this.type, required this.isDelivery});
}
