import 'package:area_calculater/pages/drawer.dart';
import 'package:flutter/material.dart';

class Volume extends StatefulWidget {
  const Volume({Key? key}) : super(key: key);

  @override
  _VolumeState createState() => _VolumeState();
}

class _VolumeState extends State<Volume> {

  TextEditingController lengthcontroll=TextEditingController();
  TextEditingController breadthcontroll=TextEditingController();
  TextEditingController heightcontroll=TextEditingController();
  String result="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Volume"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(result,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 29),),
            SizedBox(
              height: 90,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                controller: lengthcontroll,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  labelText: "Enter length",
                  hintText: "for eg:10",
                ),
              ),
            ),
            // SizedBox(height: 10,),
            
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                controller: breadthcontroll,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  labelText: "Enter breadth",
                  hintText: "for eg:10",
                ),
              ),
            ),
            // SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                controller: heightcontroll,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  labelText: "Enter height",
                  hintText: "for eg:10",
                ),
              ),
            ),
            SizedBox(height: 15,),

            OutlinedButton(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Text("Calculate",
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),
            ),
            style: OutlinedButton.styleFrom(backgroundColor: Colors.teal,
            ),
            
            onPressed: (){
              setState(() {
                result=volumecalculate();
              });
            },
            )
          ],
        ),
      ),
    );
  }

  String volumecalculate(){
    double length=double.parse(lengthcontroll.text);
     double breadth=double.parse(breadthcontroll.text);
      double height=double.parse(heightcontroll.text);
      double ans=length*breadth*height;
      
      return "Volume = $ans";
  }
}
