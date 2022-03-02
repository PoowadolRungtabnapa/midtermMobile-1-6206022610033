import 'package:flutter/material.dart';
import 'main.dart';
import 'Page_3.dart';

class Page_2 extends StatelessWidget {
  const Page_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BangBon IT Shop'),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Page_3();
              }));
            },
          )
        ],
      ),
    );
  }
}
