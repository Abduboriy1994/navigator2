import 'package:flutter/material.dart';
import 'package:navigator/pages/home_page.dart';
class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, required this.xabar}) : super(key: key);

  static String id = "detail_page";

  final String xabar;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Qaytish"),
              onPressed: (){
                Navigator.of(context).pop({'data':"Homega qaytdi"});
              },
            ),
            Text(widget.xabar),
          ],
        )
      )
    );
  }
}
