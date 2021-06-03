import 'package:flutter/material.dart';
import 'package:demo_job/gridview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Add lead';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Property Name",
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        InkWell(
          onTap: () => _popupDialog(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 1,
                //  height: MediaQuery.of(context).size.height * 1,
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 1.2),
                  ),
                ),
                child: Text(
                  "Salesman/ Customer Rep",
                  style: TextStyle(letterSpacing: 0.5),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        width: 1.2, color: Colors.lightBlue.shade900),
                  ),
                ),
                child: Text('None'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

void _popupDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (_) => new AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
            content: Builder(
              builder: (context) {
                // Get available height and width of the build area of this widget. Make a choice depending on the size.
                var height = MediaQuery.of(context).size.height;
                var width = MediaQuery.of(context).size.width;

                return Column(
                  children: <Widget>[
                    Container(
                      width: width,
                      height: height,
                      child: GridVIew(),
                    ),
                  ],
                );
              },
            ),
          ));
}
