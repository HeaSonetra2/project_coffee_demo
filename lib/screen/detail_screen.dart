import 'package:coffee_demo/data/product_detail_data.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final int productIDHome;
  const DetailScreen({super.key, required this.productIDHome});

  @override
  Widget build(BuildContext context) {
    final product = product_detail_data.firstWhere(
      (item) => item.productId == productIDHome,
    );
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
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 20),
              child: Container(
                width: double.infinity,
                height: 240,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image(
                    image: NetworkImage('${product.imageUrl}'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),

            Text(
              '${product.name}',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  '${product.type.join(',')}',
                  style: TextStyle(fontSize: 16),
                ),
                Spacer(),
                (product.isDelivery)
                    ? Image(image: AssetImage('assets/icon/delivery.png'))
                    : Text(''),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.star, color: Colors.amber),
                SizedBox(width: 4),
                Text('${product.rating}', style: TextStyle(fontSize: 16)),
              ],
            ),
            SizedBox(height: 18),
            Text(
              'Description',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('${product.des}'),
            SizedBox(height: 18),
            Text(
              'Size',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 18),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (int i = 0; i < product.sizeOption.length; i++)
                  Container(
                    width: 116,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.amber,
                    ),
                    child: Center(
                      child: Text('${product.sizeOption[i].keys}'),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
