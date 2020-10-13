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
    appBar: AppBar(
      title:Text('Task3',style:TextStyle(fontSize:30),),
      actions:[
        Icon(Icons.book),
        SizedBox(width:20),
      ],
      centerTitle:true,
    ),
    body:Container(
      padding:EdgeInsets.all(10),
      color:Colors.white,
      child:Container(
        padding:EdgeInsets.all(6),
        color:Colors.blue,
        child:Container(
          padding:EdgeInsets.all(6),
          color:Colors.white,
          child:Column(
            mainAxisAlignment:MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
              Container(
                child:Text('Column',style:TextStyle(color:Colors.blue,fontSize:20,fontWeight:FontWeight.bold,),)
              ),
              SizedBox(height:6,),
             Expanded(
               flex:1,
               child:Container(
                padding:EdgeInsets.all(6),
                color:Colors.black,
                child:Container(
                  padding:EdgeInsets.all(8),
                  child:Text('Fixed height container',style:TextStyle(color:Colors.black,fontSize:20,fontWeight:FontWeight.bold,)),
                  color:Colors.white,
                ),
               ),
              ),
              SizedBox(height:6,),
              Expanded(
                flex:4,
                child:Container(
                padding:EdgeInsets.all(6),
                color:Colors.deepPurple,
                child:Container(
                  padding:EdgeInsets.all(6),
                  color:Colors.white,
                  child:Row(
                    children:[
                      Expanded(
                        flex:2,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children:[
                            Expanded(
                              flex:2,
                              child:Container(
                                padding:EdgeInsets.all(10),
                                color:Colors.white,
                                child:Text('Row',style:TextStyle(fontSize: 20,color:Colors.deepPurple,fontWeight:FontWeight.bold,)),
                              ),
                            ),
                            SizedBox(height: 6,),
                            Expanded(
                              flex:16,
                              child:Container(
                                padding:EdgeInsets.all(6),
                                color:Colors.red,
                                child:Container(
                                  padding:EdgeInsets.all(20),
                                  color:Colors.white,
                                  child:Column(
                                    mainAxisAlignment:MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.start,
                                    children:[
                                      Text('Expanded\nchart',style:TextStyle(color:Colors.red,fontWeight:FontWeight.bold,fontSize:20,),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 6,),
                      Expanded(
                        flex:1,
                        child:Container(
                          padding:EdgeInsets.all(6),
                          color:Colors.black,
                          child:Container(
                            padding:EdgeInsets.all(6),
                            color:Colors.white,
                            child:Column(
                              mainAxisAlignment:MainAxisAlignment.start,
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children:[
                                Text('Fixed\nwidth\ncontainer',style:TextStyle(fontSize:20,fontWeight:FontWeight.bold,color:Colors.black,),),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ),
            ],

          ),
        ),
      ),
    ),
  );
}


