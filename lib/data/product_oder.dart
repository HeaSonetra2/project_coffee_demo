import 'package:coffee_demo/model/oder_product.dart';

List<OderProduct> productOder = [
  OderProduct(
    id: 1,
    productID: 1,
    qty: 1,
    name: 'Americano',
    imageUrl:
        'https://www.eatright.org/-/media/images/eatright-articles/eatright-article-feature-images/benefitsofcoffee_600x450.jpg?h=450&w=600&rev=6c8a9cd4a94d4cac8af8543054fd7b07&hash=F64F1F79DE48F33E3FB6A4FD5979C51F',
    deliveryFee: 1.2,
    sizeOption: [
      {'L': 5.3},
      {'M': 2.3},
      {'S': 1.3},
    ],
    type: ['ice', 'hot'],
    isDelivery: true,
    address: 'Phnom penh',
    addressInfo: 'Street 23,Sen Sok,Phnom Penh',
  ),

  OderProduct(
    id: 2,
    productID: 2,
    qty: 1,
    name: 'Hot latte',
    imageUrl:
        'https://www.breville.com/content/breville/us/en/blog/coffee-and-espresso/how-to-make-the-best-coffee-at-home/_jcr_content/root/container_741553154/container/image.coreimg.85.1024.jpeg/1717469390200/how-to-make-drip-coffee-at-home.jpeg',
    deliveryFee: 0,
    sizeOption: [
      {'L': 5.3},
      {'M': 2.3},
    ],
    type: ['hot'],
    isDelivery: false,
  ),

  
];


