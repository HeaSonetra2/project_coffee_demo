import 'package:coffee_demo/data/product_detail_data.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final int productIDHome;
  const DetailScreen({super.key, required this.productIDHome});

  @override
  Widget build(BuildContext context) {
    final product= product_detail_data.firstWhere((item) => item.productId==productIDHome,);

    return Scaffold(
      appBar: AppBar(
        title: Text('DetailScreen'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        actions: [Icon(Icons.favorite_border), SizedBox(width: 10)],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(color: Colors.amber),
              child: Image(image: NetworkImage('${product.imageUrl}')),
            ),
          ),
        ],
      ),
    );
  }
}
