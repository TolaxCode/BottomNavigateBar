import 'package:flutter/material.dart';
import 'package:flutter_widget/PageView/page1.dart';
import 'package:flutter_widget/PageView/page2.dart';
import 'package:flutter_widget/PageView/page3.dart';

class PageViewsWidget extends StatelessWidget {
  const PageViewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();

    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        centerTitle: true,
        title: const Text('PAGE VIEWS'),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: const [
          MyPage1(),
          MyPage2(),
          MyPage3(),
        ],
      ),
    );
  }
}
