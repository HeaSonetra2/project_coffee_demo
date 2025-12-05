import 'package:coffee_demo/model/product_detail.dart';

List<ProductDetail> product_detail_data = [
  ProductDetail(
    id: 1,
    productId: 1,
    name: 'Americano',
    des: 'This is pupular drink',
    rating: 4.5,
    imageUrl:
        'https://www.eatright.org/-/media/images/eatright-articles/eatright-article-feature-images/benefitsofcoffee_600x450.jpg?h=450&w=600&rev=6c8a9cd4a94d4cac8af8543054fd7b07&hash=F64F1F79DE48F33E3FB6A4FD5979C51F',
    sizeOption: [
      {'l': 5.3},
      {'m': 2.3},
    ],
    type: ['ice', 'hot'],
    isDelivery: true,
  ),
  ProductDetail(
    id: 2,
    productId: 2,
    name: 'Hot latte',
    des: 'This is pupular drink',
    rating: 4.5,
    imageUrl:
        'https://www.breville.com/content/breville/us/en/blog/coffee-and-espresso/how-to-make-the-best-coffee-at-home/_jcr_content/root/container_741553154/container/image.coreimg.85.1024.jpeg/1717469390200/how-to-make-drip-coffee-at-home.jpeg',
    sizeOption: [
      {'l': 7, 'm': 5, 's': 3.5},
    ],
    type: ['hot'],
    isDelivery: false,
  ),
];
