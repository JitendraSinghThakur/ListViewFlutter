import 'package:demo_job/listdart.dart';
import 'package:flutter/material.dart';

class GridVIew extends StatefulWidget {
  const GridVIew({Key? key}) : super(key: key);

  @override
  _GridVIewState createState() => _GridVIewState();
}

class _GridVIewState extends State<GridVIew> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MyListView(),
    );
    // Column(
    //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   children: <Widget>[
    //     Row(
    //       children: [
    //         Text("Title"), // <-- Wrapped in Flexible.

    //         Icon(Icons.cancel), // <-- Wrapped in Flexible.
    //       ],
    //     ),
    //     Row(
    //       children: [
    //         Text("Title"), // <-- Wrapped in Flexible.

    //         Icon(Icons.cancel), // <-- Wrapped in Flexible.
    //       ],
    //     ),
    //     Container(
    //       child: MyListView(),
    //     ),
    //   ],
    // );
  }
}
