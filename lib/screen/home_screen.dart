import 'package:coffee_demo/data/catecory_data.dart';
import 'package:coffee_demo/data/product_data.dart';
import 'package:coffee_demo/data/promotion_data.dart';
import 'package:coffee_demo/screen/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 400,
                //decoration: BoxDecoration(color: Colors.black87),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 200,
                      color: Colors.black87,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 60, left: 20),
                            child: Text(
                              'location',
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color.fromARGB(255, 88, 87, 87),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4, left: 20),
                            child: Row(
                              children: [
                                Text(
                                  'Hello,Welcome',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromARGB(
                                      255,
                                      226,
                                      225,
                                      225,
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down_outlined,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 55,
                                    decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(width: 10),
                                        Icon(
                                          Icons.search,
                                          color: const Color.fromARGB(
                                            255,
                                            175,
                                            173,
                                            173,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'Search coffee',
                                          style: TextStyle(
                                            color: const Color.fromARGB(
                                              255,
                                              175,
                                              173,
                                              173,
                                            ),
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  width: 55,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.deepOrangeAccent,
                                  ),
                                  child: Icon(
                                    Icons.tune_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 120,
                          color: Colors.black87,
                        ),
                        Positioned(
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Container(
                              width: double.infinity,
                              height: 160,
                              decoration: BoxDecoration(
                                color: Color(0xFFc67c4e),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: ImageSlideshow(
                                width: double.infinity,
                                height: double.infinity,
                                isLoop: true,
                                initialPage: 0,
                                autoPlayInterval: 3000,
                                children: List.generate(promotion_data.length, (
                                  index,
                                ) {
                                  return ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image(
                                      image: NetworkImage(
                                        '${promotion_data[index].imageUrl}',
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                  );
                                }),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(catecory_data.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            color: (index == 0)
                                ? Color(0xFFc67c4e)
                                : const Color.fromARGB(60, 173, 172, 172),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              '${catecory_data[index].title}',
                              style: TextStyle(
                                fontSize: 16,
                                color: (index == 0)
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1 / 1.5,
                  ),
                  itemCount: promotion_data.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(productIDHome:product_data[index].id,),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(77, 230, 230, 230),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 160,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image(
                                  image: NetworkImage(
                                    '${product_data[index].imageUrl}',
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      product_data[index].name,
                                      style: TextStyle(fontSize: 18),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      product_data[index].des,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Text(
                                    '\$${product_data[index].price}',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Spacer(),
                                  Container(
                                    width: 28,
                                    height: 28,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFc67c4e),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        size: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFFc67c4e),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shop_sharp), label: ''),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active),
            label: '',
          ),
        ],
      ),
    );
  }
}
