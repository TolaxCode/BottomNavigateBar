import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Center(
          child: Text('Home Page'),
        ),
        //Rich Text
        // Center(
        //   child: RichText(
        //     text: TextSpan(
        //       children: [
        //         TextSpan(
        //           text: 'Home Page',
        //           style: Theme.of(context).textTheme.headlineLarge?.copyWith(
        //                 fontWeight: FontWeight.bold,
        //                 color: Colors.white,
        //               ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
