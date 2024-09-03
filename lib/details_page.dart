import 'package:donut/donut_page.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final int index;
  const DetailsPage({super.key, required this.index});

  Widget CustomSizeDiff(size) {
    return SizedBox(
      height: size.height * 0.03,
    );
  }

//  color, title, quantity, percentage
  Widget MyInfo(size, color, title) {
    return Container(
      height: size.height * 0.2,
      width: size.width * 0.2,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(40.0),
        ),
        border: Border.all(color: Color(0xFFBDBDBD), width: 2.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: size.height * 0.01,
          ),
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: size.width * 0.05,
                overflow: TextOverflow.ellipsis),
          ),
          const Text('8 grams',
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
              )),
          Container(
            width: size.width * 0.15,
            height: size.height * 0.07,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.pink[50],
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0))),
              width: size.width,
              height: size.height * 0.8,
              child: Column(
                children: [
                  CustomSizeDiff(size),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Strawberry Crack',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Image.asset(
                    donuts[index][0],
                    height: size.height * 0.30,
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(
                  top: size.height * .47, left: 8.0, right: 8.0, bottom: 16.0),
              alignment: Alignment.centerLeft,
              padding:
                  const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 16.0),
              decoration: const BoxDecoration(
                  color: Color(0xfffefefe),
                  borderRadius: BorderRadius.all(Radius.circular(30.0))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomSizeDiff(size),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text('Ingredients',
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.w500)),
                  ),
                  CustomSizeDiff(size),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MyInfo(size, Colors.cyan[100], 'Sugar'),
                      MyInfo(size, Colors.blue[100], 'Salt'),
                      MyInfo(size, Colors.pink[100], 'Fat'),
                      MyInfo(size, Colors.orange[100], 'Energy'),
                    ],
                  ),
                  CustomSizeDiff(size),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text('Details',
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.w500)),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                        'The Sweet and Subtle Salty Combo Of Chocolate Meets Caramel. Introduce The Caramel Duo To Your Mouth!',
                        style: TextStyle(
                          fontSize: 15.0,
                        )),
                  ),
                  CustomSizeDiff(size),
                  Container(
                      width: size.width,
                      height: size.height * 0.1,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 2.0, color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '\$12.75',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing:
                                        BorderSide.strokeAlignInside),
                              ),
                              Text('Delivery Not Included'),
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Add to Cart',
                              style: TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.underline,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
