

import 'package:area_calculater/pages/SIF.dart';
import 'package:area_calculater/pages/area.dart';
import 'package:area_calculater/pages/drawer.dart';
import 'package:area_calculater/pages/volume.dart';
import 'package:flutter/material.dart';
import 'route.dart';

void main() {
  runApp(MaterialApp(
    title: "Area calculater",
     home: FirstPage(),
   
    debugShowCheckedModeBanner: false,
    routes: {
      MyRoute.simpleRoute: (context) => Simpleintrestpage(),
    },
  ));
}

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculater"),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
            child: ListTile(
              onTap: () {
               
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)=>AreaPage())
                );
              },
              tileColor: Colors.teal,
              title: Text(
                "Area Calculater",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
            child: ListTile(
              //leading: Icon(Icons.calculate),
              onTap: () {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)=>Simpleintrestpage())
                );
              },
              tileColor: Colors.teal,
              title: Text(

                "Simple interest calculater",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
            child: ListTile(
              onTap: () {},
              tileColor: Colors.teal,
              title: Text(
                "Age Calculater",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
            child: ListTile(
              
              minLeadingWidth: 20,
              onTap: () {
               
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)=>Volume())
                );
              },
              tileColor: Colors.teal,
              title: Text(
                "Volume Calculater",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}
