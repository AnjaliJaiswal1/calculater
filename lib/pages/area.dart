import 'dart:html';

import 'package:area_calculater/pages/drawer.dart';
import 'package:flutter/material.dart';

class AreaPage extends StatefulWidget {
  const AreaPage({Key? key}) : super(key: key);

  @override
  _AreaPageState createState() => _AreaPageState();
}

class _AreaPageState extends State<AreaPage> {

  GlobalKey<FormState> form=GlobalKey<FormState>();
  TextEditingController lengthcontroller = TextEditingController();
  TextEditingController breadthcontroller = TextEditingController();
   String area='';

   void validate(){
     if(form.currentState!.validate()){
       return null;
     }
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Area Calculater"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
     
      drawer: MyDrawer(),
      body: Form(
        key: form,
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "  Area of rectangle = length*breadth ",
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(area,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                validator: (val){
                  if(val!.isEmpty)
                  return "required";
                  else return null;
                },
                
                controller: lengthcontroller,
                decoration: InputDecoration(
                    labelText: "enter length",
                    hintText: "for eg 10",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
               // autovalidate: true,
                validator: (val){
                  if(val!.isEmpty)
                  return "required";
                  else return null;
                },
                controller: breadthcontroller,
                decoration: InputDecoration(
                    labelText: "enter breadth",
                    hintText: "for eg 10",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9))),
              ),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                // OutlinedButton(
                //   child: Text("Reset"),
                //   onPressed: (){
                //     lengthcontroller.text="";
                //   },
                // ),
                Expanded(
                  child: TextButton(onPressed: (){
                    lengthcontroller.text="";
                    breadthcontroller.text="";
                  },
                   child: Text("Reset",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                   ),
                ),
                

                Expanded(
                  child: TextButton(onPressed: (){
                   
                    setState(() {
                      if(form.currentState!.validate()){
                    area= calculate();
                    }
                    });
                  },
                   child: Text("CALCULATE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                   ),
                ),
              ],
            )
      
          ],
        ),
      ),
    );
  }
  String calculate(){
    double length=double.parse(lengthcontroller.text);
    double breadth=double.parse(breadthcontroller.text);
    double ans=length*breadth;
    return ("Area of rectangle= $ans");



  }
}
