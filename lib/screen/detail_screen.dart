import 'package:coffee_demo/data/product_detail_data.dart';
import 'package:coffee_demo/screen/oder_screen.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final int productIDHome;
  const DetailScreen({super.key, required this.productIDHome});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

int selectIndex = 0;

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    final product = product_detail_data.firstWhere(
      (item) => item.productId == widget.productIDHome,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('DetailScreen',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        
        )
        
        ,
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
              children: [
                for (int i = 0; i < product.sizeOption.length; i++)
                  Container(
                    width: 110,
                    height: 60,
                    margin: EdgeInsets.only(right: 10),
                    child: ChoiceChip(
                      showCheckmark: false,
                      label: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 4,
                          left: 30,
                          right: 30,
                        ),
                        child: Text('${product.sizeOption[i].keys.join(',')}'),
                      ),

                      selected: selectIndex == i,
                      labelStyle: TextStyle(
                        color: selectIndex == i
                            ? Color(0xFFc67c4e)
                            : Colors.black,
                        fontSize: 16,
                      ),
                      backgroundColor: selectIndex == i
                          ? Color(0xFFc67c4e)
                          : Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(
                          color: selectIndex == i
                              ? Color(0xFFc67c4e)
                              : Colors.black,
                        ),
                      ),
                      onSelected: (value) => {
                        setState(() {
                          selectIndex = i;
                        }),
                      },
                    ),
                  ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Price',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Text(
                      '\$ ${product.sizeOption[selectIndex].values.join(',')}',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFc67c4e),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OderScreen(productIDdetail:product.id,selectIndexSize: selectIndex,)),
                    );
                  },
                  child: Container(
                    width: 220,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xFFc67c4e),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Text(
                        'Buy Now',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
