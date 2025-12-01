import 'package:coffee_demo/screen/home_screen.dart';
import 'package:flutter/material.dart';

class OnboadingScreen extends StatelessWidget {
  const OnboadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4f4f4f),
      body: Column(
        children: [
          SizedBox(height: 200),
          Center(
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image(
                  image: AssetImage('assets/logo/coffee1.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(height: 80),
          Text(
            ' Fall in love Coffee With \nCoffee in kompot Delight',
            style: TextStyle(
              fontSize: 28,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 30),
          Text(
            'Wellcome to our coffee corner where,',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          Text(
            'Every cup delight for you',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          SizedBox(height: 30),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            child: Container(
              width: 300,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xFFc67c4e),
              ),
              child: Center(
                child: Text(
                  'Get Start',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.pushReplacement(
          //       context,
          //       MaterialPageRoute(builder: (context) => HomeScreen()),
          //     );
          //   },
          //   child: Container(
          //     width: 300,
          //     height: 60,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(12),
          //       color: Colors.red,
          //     ),
          //     child: Center(
          //       child: Text(
          //         'Get Start',
          //         style: TextStyle(
          //           fontSize: 24,
          //           color: Colors.white,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
