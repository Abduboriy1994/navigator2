import 'package:flutter/material.dart';
import 'package:navigator/pages/detail_page.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String message ="";

  Future _openDetail() async{
    Map result = await Navigator.of(context).push(new MaterialPageRoute(
      builder: (BuildContext context){
        return new DetailPage(
          xabar: "Salom",
        );
      }
    ));
    if(result.containsKey('data')){
      setState(() {
        message = result['data'];
      });
      print(result['data']);
    }
    else{
      print("Hech narsa qaytmadi");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asosiy Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, DetailPage.id);
              },
              child: Text("Open Detail"),
            ),

            ElevatedButton(
              child: Text("Detailni Och Homeni yop"),
              onPressed: (){
                Navigator.pushReplacementNamed(context, DetailPage.id);
              },
            ),

            ElevatedButton(
              onPressed: _openDetail,
              child: Text("Ma'lumot jo'natish"),
            ),

            Text(message, style: TextStyle(fontSize: 30),),
          ],
        )
      ),
    );
  }
}
