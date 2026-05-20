import 'package:flutter/material.dart';
class Loans extends StatefulWidget {
  const Loans({super.key});

  @override
  State<Loans> createState() => _LoansState();
}

class _LoansState extends State<Loans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
         title: Text("Loans",style: TextStyle(
           fontFamily: "arail",
           fontSize: 22,
           color: Colors.green
         ),),
      ),
      body: SafeArea(
        child: Directionality(
            textDirection: TextDirection.rtl,
            child: Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 16),
                padding: EdgeInsets.all(16),
                child: tab(),
              ),
            )
        ),
      ),
    );
  }
final list=[
  {
    "amont":"100",
  "date":"1990-12-10",
  "reason":"ok"
  },
  {
    "amont":"100",
    "date":"1990-12-10",
    "reason":"ok"
  },
  {
    "amont":"100",
    "date":"1990-12-10",
    "reason":"ok"
  },
  {
    "amont":"100",
    "date":"1990-12-10",
    "reason":"ok"
  },
  {
    "amont":"100",
    "date":"1990-12-10",
    "reason":"ok"
  },
  {
    "amont":"100",
    "date":"1990-12-10",
    "reason":"ok"
  },
  {
    "amont":"100",
    "date":"1990-12-10",
    "reason":"ok"
  },
  {
    "amont":"100",
    "date":"1990-12-10",
    "reason":"ok"
  },
  {
    "amont":"100",
    "date":"1990-12-10",
    "reason":"ok"
  },
  {
    "amont":"100",
    "date":"1990-12-10",
    "reason":"ok"
  },
  {
    "amont":"100",
    "date":"1990-12-10",
    "reason":"ok"
  },
  {
    "amont":"100",
    "date":"1990-12-10",
    "reason":"ok"
  },
  {
    "amont":"100",
    "date":"1990-12-10",
    "reason":"ok"
  },
  {
    "amont":"100",
    "date":"1990-12-10",
    "reason":"ok"
  },
  {
    "amont":"100",
    "date":"1990-12-10",
    "reason":"ok"
  },
  {
    "amont":"100",
    "date":"1990-12-10",
    "reason":"ok"
  },
  {
    "amont":"100",
    "date":"1990-12-10",
    "reason":"ok"
  },
  {
    "amont":"100",
    "date":"1990-12-10",
    "reason":"ok"
  }
  ];
  Widget tab(){
    return  ListView.builder(
        itemCount:list.length,
          itemBuilder: (context,index){
          return Container(
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 8),
            padding: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 5,
                  blurRadius: 7,
                    offset: Offset(2,4),
                )
              ]
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.monetization_on,color: Colors.green,),
                SizedBox(width: 10,),
                Column(
                  children: [
                    Text("Loaneed",style: TextStyle(color:Colors.orange,fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("1000 Af",style: TextStyle(fontSize: 16),)
                  ],
                )
              ],
            ),
          );
          }
    );
  }
}
