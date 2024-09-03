import 'package:donut/details_page.dart';
import 'package:flutter/material.dart';

class DonutPage extends StatefulWidget {
  const DonutPage({super.key});

  @override
  State<DonutPage> createState() => _DonutPageState();
}

final List<List<String>> donuts = [
  ['images/icecream_donut.png', 'Ice cream', 'Dunkin\'s', '35'],
  ['images/strawberry_donut.png', 'Strawberry', 'Dunkin\'s', '25'],
  ['images/chocolate_donut.png', 'Chocolate', 'Dunkin\'s', '40'],
  ['images/grape_donut.png', 'Grape Ape', 'Dunkin\'s', '26'],
  ['images/icecream_donut.png', 'Ice cream', 'Dunkin\'s', '35'],
  ['images/strawberry_donut.png', 'Strawberry', 'Dunkin\'s', '25'],
  ['images/chocolate_donut.png', 'Chocolate', 'Dunkin\'s', '40'],
  ['images/grape_donut.png', 'Grape Ape', 'Dunkin\'s', '26'],
];
final List<Color?> colors = [
  Colors.pink[50],
  Colors.orange[50],
  Colors.cyan[50],
  Colors.purple[50],
  Colors.pink[50],
  Colors.orange[50],
  Colors.cyan[50],
  Colors.purple[50]
];
final List<Color?> colorsTextCont = [
  Colors.pink[100],
  Colors.orange[100],
  Colors.cyan[100],
  Colors.purple[100],
  Colors.pink[100],
  Colors.orange[100],
  Colors.cyan[100],
  Colors.purple[100]
];
final List<Color?> colorsText = [
  Colors.pink,
  Colors.orange,
  Colors.cyan,
  Colors.purple,
  Colors.pink,
  Colors.orange,
  Colors.cyan,
  Colors.purple
];

class _DonutPageState extends State<DonutPage> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: donuts.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsPage(
                                index: index,
                              )));
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: colors[index]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 50.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0),
                                  topLeft: Radius.zero),
                              color: colorsTextCont[index]),
                          child: Center(
                              child: Text(
                            '\$${donuts[index][3]}',
                            style: TextStyle(
                                color: colorsText[index],
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0),
                          )),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Image.asset(
                            donuts[index][0],
                          ),
                        ),
                      ),
                      Text(
                        donuts[index][1],
                        style: const TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      Text(donuts[index][2]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.favorite_outline)),
                          IconButton(onPressed: () {}, icon: const Icon(Icons.add))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ));
  }
}
