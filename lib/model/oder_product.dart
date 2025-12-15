class OderProduct {
  final int id;
  final int productID;
        int qty;
  final String name;
  final String imageUrl;
  final double deliveryFee;
  final List<Map<String, double>> sizeOption;
  final List<String> type;
  final bool isDelivery;
  String? address;
  String? addressInfo;

  OderProduct({required this.id, required this.productID, required this.qty, required this.name, required this.imageUrl, required this.deliveryFee, required this.sizeOption, required this.type, required this.isDelivery,this.address,this.addressInfo});

  OderProduct copyWith({
    int? id,
    int? productID,
    int? qty,
    String? name,
    String? imageUrl,
    double? deliveryFee,
    List<Map<String, double>>? sizeOption,
    List<String>? type,
    bool? isDelivery,
    String? address,
    String? addressInfo,
  }) {
    return OderProduct(
      id: id ?? this.id,
      productID: productID ?? this.productID,
      qty: qty ?? this.qty,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      deliveryFee: deliveryFee ?? this.deliveryFee,
      sizeOption: sizeOption ?? this.sizeOption,
      type: type ?? this.type,
      isDelivery: isDelivery ?? this.isDelivery,
      address: address ?? this.address,
      addressInfo: addressInfo ?? this.addressInfo,
    );
  }
  
}
