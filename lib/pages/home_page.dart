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
      child:Column(
        children:[
          Spacer(),
          Text('Welcome to Home ${count}',style: TextStyle(fontSize:30,fontWeight:FontWeight.bold),),
          FlatButton(
            child:Text('Reset'),
            color:Colors.green,
            onPressed:(){
              setState(()=>count=0);
            }
          ),
          Spacer(),
        ],
      ),
    ),
   floatingActionButton: Row(
     children:[
       Spacer(),
       FloatingActionButton(
         elevation:10.0,
         child:Icon(Icons.reset_tv),
         onPressed:(){
           setState((){
             count=0;
           });
         },
       ),
       Spacer(),
       FloatingActionButton(
         elevation:10.0,
         child:Icon(Icons.add),
         onPressed:(){
           setState((){
             count++;
           });
         },
       ),
       Spacer(),
     ],
   ),
  );
}
// class Page extends StatefulWidget {
//   @override
//   _PageState createState() => _PageState();
// }
//
// class _PageState extends State<Page> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

