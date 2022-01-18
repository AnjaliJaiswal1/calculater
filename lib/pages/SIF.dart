import 'dart:math';

import 'package:area_calculater/pages/drawer.dart';
import 'package:flutter/material.dart';
// void main()
// {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     title: "Simple Intreset calculator",
//     home: Mypage(),

//     theme: ThemeData(
//       primaryColor: Colors.teal,
//       //accentColor: Colors.red,
//      // brightness: Brightness.dark
//     ),
//   ));
// }
class Simpleintrestpage extends StatefulWidget {
  const Simpleintrestpage({Key? key}) : super(key: key);

  @override
  _SimpleintrestpageState createState() => _SimpleintrestpageState();
}

class _SimpleintrestpageState extends State<Simpleintrestpage> {
  var formkey=GlobalKey<FormState>();
  TextEditingController principlecontroller = TextEditingController();
  TextEditingController termcontroller = TextEditingController();
  TextEditingController ratecontroller = TextEditingController();
  var displayText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Simple Intrest Calculator"),
        backgroundColor: Colors.teal,
      ),
      body: Form(
        key: formkey,
        // margin: EdgeInsets.only(left:minimum*10),
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Image(
              image: NetworkImage(
                  "https://laravelnews.imgix.net/images/laravel-money.jpg?ixlib=php-3.3.0"),
              width: 200,
              height: 200,
            ),
            // ClipRRect(
            //   child: Image.network("https://laravelnews.imgix.net/images/laravel-money.jpg?ixlib=php-3.3.0"),
            //   borderRadius: BorderRadius.circular(8),
            // ),
            SizedBox(
              height: 30,
            ),
            // Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiL5y3fLB0zj7cTAzohRieKoQNbIwF-ZkBkw&usqp=CAU")
            TextFormField(
              validator: (value){
                if(value!.isEmpty){
                  return "Please enter principal";
                }

              },
              controller: principlecontroller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                contentPadding: EdgeInsets.only(left: 50),
                labelText: "Enter Principal amount",
                hintText: "for eg: 10000",
              ),
            ),

            SizedBox(
              height: 20,
            ),

            TextFormField(
              validator: (value){
                if(value!.isEmpty)
                return "Please enter rate";
              },
              controller: ratecontroller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                contentPadding: EdgeInsets.only(left: 50),
                labelText: "Rate of intrest",
                hintText: "for eg: 10",
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    validator: (value){
                if(value!.isEmpty)
                return "Please enter Time";
              },
                    controller: termcontroller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      contentPadding: EdgeInsets.only(left: 50),
                      labelText: "Time in years",
                      hintText: "for eg: 10",
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(),
                    onPressed: () {
                      setState(() {
                        if(formkey.currentState!.validate()){
                        this.displayText = totalcalculate();
                        }
                      });
                    },
                    child: Text("Calculate"),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    // color: Colors.white24,
                    child: TextButton(
                      style: ButtonStyle(),
                      onPressed: () {
                        setState(() {
                          reset();
                        });
                      },
                      child: Text(
                        "Reset",
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            Center(
                child: Text(
              displayText,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            )),
          ],
        ),
      ),
    );
  }

  void reset() {
    principlecontroller.text = '';
    termcontroller.text = '';
    ratecontroller.text = '';
    displayText = '';
  }

  String totalcalculate() {
    double principle = double.parse(principlecontroller.text);
    double term = double.parse(termcontroller.text);
    double rate = double.parse(ratecontroller.text);

    double amount = (principle * rate * term) / 100;
    double total = principle + amount;
    String result = "your SI is $amount and total amount is $total";
    return result;
  }
}
