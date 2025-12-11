import 'package:coffee_demo/data/product_oder.dart';
import 'package:flutter/material.dart';

class OderScreen extends StatefulWidget {
  int productIDdetail;
  OderScreen({super.key, required this.productIDdetail});

  @override
  State<OderScreen> createState() => _OderScreenState();
}

bool isDelivery = true;

class _OderScreenState extends State<OderScreen> {
  @override
  Widget build(BuildContext context) {
    final product = productOder.firstWhere(
      (item) => item.productID == widget.productIDdetail,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Oder',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            product.isDelivery
                ? Container(
                    width: double.infinity,
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0XFFEDEDED),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isDelivery = true;
                              });
                            },
                            child: Container(
                              height: double.infinity,
                              margin: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: isDelivery
                                    ? Color(0xFFc67c4e)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Text(
                                  'Delivery',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: isDelivery
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isDelivery = false;
                              });
                            },
                            child: Container(
                              height: double.infinity,
                              margin: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: isDelivery
                                    ? Colors.transparent
                                    : Color(0xFFc67c4e),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Text(
                                  'Pick Up',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: isDelivery
                                        ? Colors.black
                                        : Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : Center(),
            SizedBox(height: 40),
            (product.isDelivery && isDelivery)
                ? Container(
                    width: double.infinity,
                    height: 160,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Delivery Address',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '${product.address}',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '${product.addressInfo}',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 192, 180, 180),
                          ),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                TextEditingController addressController = TextEditingController();
                                showDialog(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                    backgroundColor: Colors.white,
                                    title: Text('Edit Address'),
                                    content: TextField(
                                      controller: addressController,
                                      decoration: InputDecoration(
                                        hintText: "Enter new address",
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(context),
                                        child: Text("Cancel"),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          String value = addressController.text;
                                          print(
                                            value,
                                          ); // Do something with entered address
                                          Navigator.pop(context);
                                        },
                                        child: Text("Save"),
                                      ),
                                    ],
                                  ),
                                );
                              },
                              child: Container(
                                width: 120,
                                height: 30,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: const Color.fromARGB(
                                      255,
                                      147,
                                      147,
                                      147,
                                    ),
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.edit_calendar),
                                    Text('Edit Adress'),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 20),

                            Container(
                              width: 120,
                              height: 30,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: const Color.fromARGB(
                                    255,
                                    147,
                                    147,
                                    147,
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.edit_document),
                                  Text('Add note'),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  )
                : Center(),
          ],
        ),
      ),
    );
  }
}
