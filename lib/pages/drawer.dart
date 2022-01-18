import 'dart:js';

import 'package:area_calculater/main.dart';
import 'package:area_calculater/pages/SIF.dart';
import 'package:area_calculater/pages/area.dart';
import 'package:area_calculater/pages/volume.dart';
import 'package:area_calculater/route.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text("Calculater",textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,
            ),
          ),
            Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: ListTile(
              tileColor: Colors.teal,
              title:Text("Home Page",
              style: TextStyle(fontSize: 18,color: Colors.white)
              ),
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FirstPage()));
                // Navigator.push(context,
                //  MaterialPageRoute(builder: (context)=>FirstPage()));
                
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: ListTile(
              tileColor: Colors.teal,
              title:Text("Area Calculater",
              style: TextStyle(fontSize: 18,color: Colors.white)
              ),
              onTap: (){
                Navigator.pushReplacement(context,
                 MaterialPageRoute(builder: (context)=>AreaPage()));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: ListTile(
              tileColor: Colors.teal,
              title: Text("Simple interest calculater",
              style: TextStyle(fontSize: 18,color: Colors.white)
              ),
              onTap: (){
                 Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const Simpleintrestpage()));
              },

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: ListTile(
              tileColor: Colors.teal,
              title:Text("volume Calculater",
              style: TextStyle(fontSize: 18,color: Colors.white)
              ),
              onTap: (){
                Navigator.pushReplacement(context,
                 MaterialPageRoute(builder: (context)=>Volume()));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: ListTile(
              tileColor: Colors.teal,
              title: Text("Age calculater",
              style: TextStyle(fontSize: 18,color: Colors.white),),
              onTap: (){},
              
            ),
          )
        ],
      ),
    );
  }
}
