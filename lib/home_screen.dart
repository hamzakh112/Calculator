import 'package:calculator/widgets/numbers.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput="";
  var result="";
  void equalPress(){
    Parser p=Parser();
    Expression expression=p.parse(userInput);
    ContextModel contextModel=ContextModel();
    double eva=expression.evaluate(EvaluationType.REAL, contextModel);
    result=eva.toString();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Align(
                          alignment: Alignment.bottomRight,
                        ),

                        Text(userInput.toString(),style: TextStyle(fontSize: 30),),
                        Text(result.toString(),style: TextStyle(fontSize: 30),),
                      ],
                    ),
                  ),
                ),
              ),
             Expanded(
               flex:2,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Row(
                     children: [
                       MyWidget(
                           onpressed: (){
                             userInput='';
                             result='';
                             setState(() {

                             });
                           },
                           text: 'AC', color: Colors.grey),
                       MyWidget(onpressed: (){
                         userInput=userInput+'+/-';
                         setState(() {

                         });
                       },text: '+/-', color: Colors.grey),
                       MyWidget(onpressed: (){
                         userInput=userInput+'%';
                         setState(() {

                         });
                       },text: '%', color: Colors.grey),
                       MyWidget(onpressed: (){
                         userInput=userInput+'/';
                         setState(() {

                         });
                       },text: '/', color: Color(0xFFEF57C00)),
                     ],),
                   SizedBox(
                     height: 10,
                   ),
                   Row(
                     children: [
                       MyWidget(onpressed: (){
                         userInput=userInput+'7';
                         setState(() {

                         });
                       },text: '7', color: Colors.grey),
                       MyWidget(onpressed: (){
                         userInput=userInput+'8';
                         setState(() {

                         });
                       },text: '8', color: Colors.grey),
                       MyWidget(onpressed: (){
                         userInput=userInput+'9';
                         setState(() {

                         });
                       },text: '9', color: Colors.grey),
                       MyWidget(onpressed: (){
                         userInput=userInput+'*';

                         setState(() {

                         });
                       },text: 'x', color: Color(0xFFEF57C00)),
                     ],),
                   SizedBox(
                     height: 10,
                   ),

                   Row(
                     children: [
                       MyWidget(onpressed: (){
                         userInput=userInput+'4';
                         setState(() {

                         });
                       },text: '4', color: Colors.grey),
                       MyWidget(onpressed: (){
                         userInput=userInput+'5';
                         setState(() {

                         });
                       },text: '5', color: Colors.grey),
                       MyWidget(onpressed: (){
                         userInput=userInput+'6';
                         setState(() {

                         });
                       },text: '6', color: Colors.grey),
                       MyWidget(onpressed: (){
                         userInput=userInput+'-';
                         setState(() {

                         });
                       },text: '-', color: Color(0xFFEF57C00)),
                     ],),
                   const SizedBox(
                     height: 10,
                   ),
                   Row(
                     children: [
                       MyWidget(onpressed: (){
                         userInput=userInput+'1';
                         setState(() {

                         });
                       },text: '1', color: Colors.grey),
                       MyWidget(onpressed: (){
                         userInput=userInput+'2';
                         setState(() {

                         });
                       },text: '2', color: Colors.grey),
                       MyWidget(onpressed: (){
                         userInput=userInput+'3';
                         setState(() {

                         });
                       },text: '3', color: Colors.grey),
                       MyWidget(onpressed: (){
                         userInput=userInput+'+';
                         setState(() {

                         });
                       },text: '+', color: Color(0xFFEF57C00)),
                     ],),
                   const SizedBox(
                     height: 10,
                   ),
                   Row(
                     children: [
                       MyWidget(onpressed: (){
                         userInput=userInput+'0';
                         setState(() {

                         });
                       },text: '0', color: Colors.grey),
                       MyWidget(onpressed: (){
                         userInput=userInput+'.';
                         setState(() {

                         });
                       },text: '.', color: Colors.grey),
                       MyWidget(onpressed: (){
                         userInput=userInput.substring(0,userInput.length-1);
                         setState(() {

                         });
                       },text: 'Del', color: Colors.grey),
                       MyWidget(onpressed: (){
                         equalPress();
                         setState(() {

                         });
                       },text: '=', color: Color(0xFFEF57C00)),
                     ],),
                   SizedBox(
                     height: 10,
                   ),
                 ],
               ),
             )
            ],
          ),
        ),
      )

    );
  }
}


