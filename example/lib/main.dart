import 'package:flutter/material.dart';
import 'package:tabbar_gradient_indicator/tabbar_gradient_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List list = ["title - 1 - 1", "title - 1 - 2"];

    return DefaultTabController(
      length: list.length,
      child: MaterialApp(
          home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: const Text("tabbar gradient indicator"),
            bottom: PreferredSize(
              preferredSize: const Size(double.infinity, 40),
              child: TabBar(
                enableFeedback: true,
                tabs: list.map((e) => Tab(text: e)).toList(),
                labelColor: Colors.black,
                indicator: const TabBarGradientIndicator(
                    gradientColor: [Color(0xff579CFA), Color(0xff2FDEE7)],
                    indicatorWidth: 4),
                indicatorSize: TabBarIndicatorSize.label,
                isScrollable: true,
              ),
            ),
          ),
          body: TabBarView(
              children: list.map((e) {
            return Center(child: Text(e));
          }).toList()),
        ),
      )),
    );
  }
}
