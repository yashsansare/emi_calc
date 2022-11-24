import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class EmiCalculator extends StatefulWidget {
  const EmiCalculator({Key? key}) : super(key: key);

  @override
  State<EmiCalculator> createState() => _EmiCalculatorState();
}

class _EmiCalculatorState extends State<EmiCalculator> {
  double Amount=10000;
  double Rate=1;
  double year=1;
  double emi =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 3, 1, 65),
        centerTitle: true,
        title: Text("EMI Calculator"),
        leading: Icon(Icons.menu),
      ),

      backgroundColor: Color.fromARGB(255, 3, 1, 65),
      body:
      Center(
        child: Column(

          children: [
            SizedBox(
              height: 15,
            ),
            Container(child: Text("Your Loan Emi Is :",
              style: TextStyle(fontSize: 25,color: Colors.white),
            ),

                alignment:Alignment.topCenter
            ),
            SizedBox(height: 30,),
            Container(child: Text("Rs = ${emi.toInt()}/month",
                style: TextStyle(fontSize: 25,color: Colors.white)
            ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(

                decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30)
                    )
                ),

                child:Row(
                  children: [
                    Expanded(
                      child: Container(

                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text("Loan Amount",
                              style: TextStyle(color: Colors.black,
                                fontSize: 25,fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("RS = ${Amount} ", style: TextStyle(color: Colors.black,
                              fontSize: 25,fontWeight: FontWeight.bold,
                            ),
                            ),
                            Slider(value: Amount,activeColor: Color.fromARGB(255, 3, 1, 65),
                              divisions: 100,
                              onChanged: (Value){
                                setState(() {
                                  Amount=Value;
                                });
                              },max: 1000000,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text("Interest Rate",
                              style: TextStyle(color: Colors.black,
                                fontSize: 25,fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(" ${Rate.toInt()}% ",
                              style: TextStyle(color: Colors.black,
                                fontSize: 25,fontWeight: FontWeight.bold,
                              ),
                            ),
                            Slider(value: Rate,activeColor: Color.fromARGB(255, 3, 1, 65),
                              divisions: 20,
                              onChanged: (Value){
                                setState(() {
                                  Rate=Value;
                                });
                              },max: 20,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text("Loan Tenuer",
                              style: TextStyle(color: Colors.black,
                                fontSize: 25,fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(" ${year.toInt()} Year ",
                              style: TextStyle(color: Colors.black,
                                fontSize: 25,fontWeight: FontWeight.bold,
                              ),
                            ),
                            Slider(value: year, activeColor: Color.fromARGB(255, 3, 1, 65),
                              divisions: 20,
                              onChanged: (Value){
                                setState(() {
                                  year=Value;
                                });
                              },max: 20,
                            ),
                            SizedBox(
                              height: 20,
                            ),

                            Container(

                            ),ElevatedButton(onPressed: (){
                              setState(() {
                                emi = (Amount+ (Amount*Rate*year/100))/12;
                              });
                            },
                              child: Text("Calculate",style: TextStyle(fontSize: 20),),
                            ),
                            Expanded(child: Container())
                          ],
                        ),
                      ),

                    ),
                  ],
                ) ,
              ),
            ),

          ],
        ),
      ),





    );


  }
}
