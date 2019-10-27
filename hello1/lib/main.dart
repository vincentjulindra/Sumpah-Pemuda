import 'package:flutter/material.dart';
import 'package:hello1/tokoh1.dart' as prefix0;
import 'halaman1.dart';
import 'tokoh.dart';
import 'tokoh1.dart';
void main() {
  runApp(new MaterialApp(
    title: "My Apps",
    home: new HalamanUtama(),
    
  ));
}
class HalamanUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Aplikasi Sumpah Pemuda"),
        
            backgroundColor: Colors.red,
      ),
      
      body: new Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            new GestureDetector(
              onTap: () {
                Route route = MaterialPageRoute(builder: (context) => Halaman1());
                Navigator.push(context, route);
              },
              child: new Card(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                   Image.asset("images/2-01.png"),
                    new Container(
                      padding: EdgeInsets.all(10.0),
                      child: new Text("Sumpah Pemuda."),
                    ),
                    
                  ],
                ),
              ),
              
            ),
            new GestureDetector(
              onTap: () {
                Route route = MaterialPageRoute(builder: (context) => tokoh());
                Navigator.push(context, route);
              },
              child: new Card(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    
                      Image.asset(
                          "images/1-01.png"),
                    
                    new Container(
                      padding: EdgeInsets.all(10.0),
                      child: new Text("Daftar Tokoh-tokoh Pahlawan Sumpah Pemuda"),
                    )
                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}