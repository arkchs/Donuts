import 'package:donut/donut_page.dart';
import 'package:donut/my_tab.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    const MyTab(
      iconPath: 'icons/donut.png',
    ),
    const MyTab(
      iconPath: 'icons/burger.png',
    ),
    const MyTab(
      iconPath: 'icons/pancakes.png',
    ),
    const MyTab(
      iconPath: 'icons/pizza.png',
    ),
    const MyTab(
      iconPath: 'icons/smoothie.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Row(mainAxisSize: MainAxisSize.min, children: [
            const SizedBox(
              width: 4,
            ),
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'icons/menu_icon.png',
                  width: 35.0,
                )),
          ]),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.account_circle_outlined,
                  size: 40,
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
              child: Row(children: [
                Text(
                  'I want to ',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w600),
                ),
                Text(
                  'Eat',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
            ),
            TabBar(tabs: tabs),
            const Expanded(
                child: TabBarView(
              children: [
                //donut page
                DonutPage(),
                DonutPage(),
                DonutPage(),
                DonutPage(),
                DonutPage(),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
