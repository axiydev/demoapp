import 'package:flutter/material.dart';
class HomePage extends StatefulWidget{
  static final String id="home_page";
  @override
  _HomePageState createState()=>_HomePageState();
}
class _HomePageState extends State<HomePage>{
  int count=0;
  @override
  Widget build(BuildContext context)=>Scaffold(
    appBar:AppBar(
      centerTitle:true,
      actions:[
        Icon(Icons.security,),
        Icon(Icons.notifications),
        SizedBox(width:20,),
      ],
      title:Text('AppBar',style:TextStyle(color:Colors.black,fontSize:25),),
    ),
    body:Center(
      child:Text('Welcome to Home ${count}',style:TextStyle(fontSize:30,fontWeight:FontWeight.bold),),
    ),
    floatingActionButton:FloatingActionButton(
      elevation:10.0,
      child:Icon(Icons.add),
      onPressed:(){
        setState((){
        count++;
        });
      },
    ),
  );
}