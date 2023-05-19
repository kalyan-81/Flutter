import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Time Sheets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       shape: const RoundedRectangleBorder( // <-- SEE HERE
          borderRadius: BorderRadius.vertical( 
            bottom: Radius.circular(25.0),
          ),
        ),
        leading: IconButton(
          onPressed: (){}, 
          icon: Icon(Icons.arrow_back_sharp,
          color: Colors.black,
          ),
          ),
        title:Text('Time sheets',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        
      ),
   
      backgroundColor: Colors.grey[350],
     
     
     
     
     
     
     
     
     
      body: Column(
             children:<Widget> [

              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:<Card> [
                    Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children:<Widget> [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.orange[100],
                                  borderRadius: BorderRadius.circular(10),
                                  
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                          
                                  child: Icon(Icons.calendar_month,
                                  color: Colors.orange,),
                                ),
                              ),

                              ],
                          ),
                  
                        Row(
                           children: <Widget> [
                            Text('TimeSheets\nsubmitted'),
                            SizedBox(width: 50,),
                            Text('50',
                            style: TextStyle(fontSize: 30,
                            fontWeight: FontWeight.bold,
                            ),
                            
                            ),
                           ],
                        ),
                        
                  
                      ]),
                      
                    ),


                 Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children:<Widget> [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.orange[100],
                                  borderRadius: BorderRadius.circular(10),
                                  
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                          
                                  child: Icon(Icons.calendar_month,
                                  color: Colors.orange,),
                                ),
                              ),

                              ],
                          ),
                  
                        Row(
                           children: <Widget> [
                            Text('Pending\nTimesheets'),
                            SizedBox(width: 40,),
                            Text('10',
                            style: TextStyle(fontSize: 30,
                            fontWeight: FontWeight.bold,
                            ),
                            
                            ),
                           ],
                        ),
                        
                  
                      ]),
                      
                    ),


                  ],
                ) ,
              ),



//second row

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children:<Card> [
                Card(
                  
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children:<Widget> [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.orange[100],
                              borderRadius: BorderRadius.circular(10),
                              
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                                      
                              child: Icon(Icons.calendar_month,
                              color: Colors.orange,),
                            ),
                          ),

                          ],
                      ),
              
                    Row(
                       children: <Widget> [
                        Text('Pending For\nApproval'),
                        SizedBox(width: 50,),
                        Text('10',
                        style: TextStyle(fontSize: 30,
                        fontWeight: FontWeight.bold,
                        ),
                        
                        ),
                       ],
                    ),
                    
              
                  ]),
                  
                ),


             Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children:<Widget> [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.orange[100],
                              borderRadius: BorderRadius.circular(10),
                              
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                                      
                              child: Icon(Icons.calendar_month,
                              color: Colors.orange,),
                            ),
                          ),

                          ],
                      ),
              
                    Row(
                       children: <Widget> [
                        Text('Invoice Ready\nTimesheets'),
                        SizedBox(width: 40,),
                        Text('10',
                        style: TextStyle(fontSize: 30,
                        fontWeight: FontWeight.bold,
                        ),
                        
                        ),
                       ],
                    ),
                    
              
                  ]),
                  
                ),


              ],
            ),






    SizedBox(height: 30,),
    Row(
      children:<Widget> [
       
       SizedBox(width: 20,),

        Text('All Time Sheets',
        textAlign: TextAlign.start,
        style:TextStyle(fontWeight: FontWeight.bold),),
        SizedBox(height: 30,),
      ],
    ),






          //Listview Container

               Expanded(
                 child: Container(
                  height: 480,
                     
                  padding: EdgeInsets.all(1.0),
                  child: ListView(
                    children:<Card> [
                       Card(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children:<Widget> [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children:<Widget> [
                                        Text('Vendor : BC Forward',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0,
                                        ),
                                        ),
                                        SizedBox(
                                          width:50 ,
                                        ),
                                         Container(
                                          padding: EdgeInsets.all(5.0),
                                          decoration: BoxDecoration( 
                                            color:Colors.green[100],
                                            
                                            borderRadius: BorderRadius.all(Radius.circular(10))),
                                          
                                           child: Text('Approved',
                                           style: TextStyle(color: Colors.green,
                                           fontWeight: FontWeight.bold,
                                           
                                           
                                           ),
                                            
                                           ),
                                         ),
                         
                                      
                         
                                      ],
                                    ),
                                    SizedBox(height: 5.0,),
                         
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      
                                      children:<Widget> [
                                      Text('Client : State Of NY'),
                                      
                                    ],
                                    ),
                                     SizedBox(height: 5.0,),
                                    Row(
                                      children:<Widget> [
                                      Text('Cycle : Weekly'),
                                      SizedBox(width: 120.0,),
                                      Text('Hours : 40'),
                                      
                                    ],
                                    ),
                                     SizedBox(height: 5.0,),
                                   Row(
                                    children:<Widget> [
                                      Container(
                                        padding: EdgeInsets.all(2.0),
                                        margin: EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                        color: Color.fromARGB(120, 2, 134, 243) 
                                        ),
                                        child: Text('Period : 12/02/2020 - 15/03/2024',
                                        style: TextStyle(
                                          color:Color.fromARGB(255, 34, 0, 255),
                                        ),
                                        
                                                         ),
                                       
                                        
                                            
                                      ),
                                      
                                    ],
                                  ),
                         
                                  ],
                                  
                                ),
                         
                              ),
                   
                   //second sub card
                   Card(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children:<Widget> [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children:<Widget> [
                                        Text('Vendor : BC Forward',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0,
                                        ),
                                        ),
                                        SizedBox(
                                          width:50 ,
                                        ),
                                         Container(
                                          padding: EdgeInsets.all(5.0),
                                          decoration: BoxDecoration( 
                                            color:Colors.green[100],
                                            
                                            borderRadius: BorderRadius.all(Radius.circular(10))),
                                          
                                           child: Text('Approved',
                                           style: TextStyle(color: Colors.green,
                                           fontWeight: FontWeight.bold,
                                           
                                           
                                           ),
                                            
                                           ),
                                         ),
                         
                                      
                         
                                      ],
                                    ),
                                    SizedBox(height: 5.0,),
                         
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      
                                      children:<Widget> [
                                      Text('Client : State Of NY'),
                                      
                                    ],
                                    ),
                                     SizedBox(height: 5.0,),
                                    Row(
                                      children:<Widget> [
                                      Text('Cycle : Weekly'),
                                      SizedBox(width: 120.0,),
                                      Text('Hours : 40'),
                                      
                                    ],
                                    ),
                                     SizedBox(height: 5.0,),
                                   Row(
                                    children:<Widget> [
                                      Container(
                                        padding: EdgeInsets.all(2.0),
                                        margin: EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                        color: Color.fromARGB(120, 2, 134, 243) 
                                        ),
                                        child: Text('Period : 12/02/2020 - 15/03/2024',
                                        style: TextStyle(
                                          color:Color.fromARGB(255, 34, 0, 255),
                                        ),
                                        
                                                         ),
                                       
                                        
                                            
                                      ),
                                      
                                    ],
                                  ),
                         
                                  ],
                                  
                                ),
                         
                              ),
                   
                   //third subcard
                              Card(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children:<Widget> [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children:<Widget> [
                                        Text('Vendor : BC Forward',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0,
                                        ),
                                        ),
                                        SizedBox(
                                          width:50 ,
                                        ),
                                         Container(
                                          padding: EdgeInsets.all(5.0),
                                          decoration: BoxDecoration( 
                                            color:Colors.green[100],
                                            
                                            borderRadius: BorderRadius.all(Radius.circular(10))),
                                          
                                           child: Text('Approved',
                                           style: TextStyle(color: Colors.green,
                                           fontWeight: FontWeight.bold,
                                           
                                           
                                           ),
                                            
                                           ),
                                         ),
                         
                                      
                         
                                      ],
                                    ),
                                    SizedBox(height: 5.0,),
                         
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      
                                      children:<Widget> [
                                      Text('Client : State Of NY'),
                                      
                                    ],
                                    ),
                                     SizedBox(height: 5.0,),
                                    Row(
                                      children:<Widget> [
                                      Text('Cycle : Weekly'),
                                      SizedBox(width: 120.0,),
                                      Text('Hours : 40'),
                                      
                                    ],
                                    ),
                                     SizedBox(height: 5.0,),
                                   Row(
                                    children:<Widget> [
                                      Container(
                                        padding: EdgeInsets.all(2.0),
                                        margin: EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                        color: Color.fromARGB(120, 2, 134, 243) 
                                        ),
                                        child: Text('Period : 12/02/2020 - 15/03/2024',
                                        style: TextStyle(
                                          color:Color.fromARGB(255, 34, 0, 255),
                                        ),
                                        
                                                         ),
                                       
                                        
                                            
                                      ),
                                      
                                    ],
                                  ),
                         
                                  ],
                                  
                                ),
                         
                              ),
                   //4th subcard
                   
                              Card(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children:<Widget> [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children:<Widget> [
                                        Text('Vendor : BC Forward',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0,
                                        ),
                                        ),
                                        SizedBox(
                                          width:50 ,
                                        ),
                                         Container(
                                          padding: EdgeInsets.all(5.0),
                                          decoration: BoxDecoration( 
                                            color:Colors.green[100],
                                            
                                            borderRadius: BorderRadius.all(Radius.circular(10))),
                                          
                                           child: Text('Approved',
                                           style: TextStyle(color: Colors.green,
                                           fontWeight: FontWeight.bold,
                                           
                                           
                                           ),
                                            
                                           ),
                                         ),
                         
                                      
                         
                                      ],
                                    ),
                                    SizedBox(height: 5.0,),
                         
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      
                                      children:<Widget> [
                                      Text('Client : State Of NY'),
                                      
                                    ],
                                    ),
                                     SizedBox(height: 5.0,),
                                    Row(
                                      children:<Widget> [
                                      Text('Cycle : Weekly'),
                                      SizedBox(width: 120.0,),
                                      Text('Hours : 40'),
                                      
                                    ],
                                    ),
                                     SizedBox(height: 5.0,),
                                   Row(
                                    children:<Widget> [
                                      Container(
                                        padding: EdgeInsets.all(2.0),
                                        margin: EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                        color: Color.fromARGB(120, 2, 134, 243) 
                                        ),
                                        child: Text('Period : 12/02/2020 - 15/03/2024',
                                        style: TextStyle(
                                          color:Color.fromARGB(255, 34, 0, 255),
                                        ),
                                        
                                                         ),
                                       
                                        
                                            
                                      ),
                                      
                                    ],
                                  ),
                         
                                  ],
                                  
                                ),
                         
                              ),
                   //5th subcard
                    Card(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children:<Widget> [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children:<Widget> [
                                        Text('Vendor : BC Forward',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0,
                                        ),
                                        ),
                                        SizedBox(
                                          width:50 ,
                                        ),
                                         Container(
                                          padding: EdgeInsets.all(5.0),
                                          decoration: BoxDecoration( 
                                            color:Colors.green[100],
                                            
                                            borderRadius: BorderRadius.all(Radius.circular(10))),
                                          
                                           child: Text('Approved',
                                           style: TextStyle(color: Colors.green,
                                           fontWeight: FontWeight.bold,
                                           
                                           
                                           ),
                                            
                                           ),
                                         ),
                         
                                      
                         
                                      ],
                                    ),
                                    SizedBox(height: 5.0,),
                         
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      
                                      children:<Widget> [
                                      Text('Client : State Of NY'),
                                      
                                    ],
                                    ),
                                     SizedBox(height: 5.0,),
                                    Row(
                                      children:<Widget> [
                                      Text('Cycle : Weekly'),
                                      SizedBox(width: 120.0,),
                                      Text('Hours : 40'),
                                      
                                    ],
                                    ),
                                     SizedBox(height: 5.0,),
                                   Row(
                                    children:<Widget> [
                                      Container(
                                        padding: EdgeInsets.all(2.0),
                                        margin: EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                        color: Color.fromARGB(120, 2, 134, 243) 
                                        ),
                                        child: Text('Period : 12/02/2020 - 15/03/2024',
                                        style: TextStyle(
                                          color:Color.fromARGB(255, 34, 0, 255),
                                        ),
                                        
                                                         ),
                                       
                                        
                                            
                                      ),
                                      
                                    ],
                                  ),
                         
                                  ],
                                  
                                ),
                         
                              ),
                   //6th subcard
                   
                      Card(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children:<Widget> [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children:<Widget> [
                                        Text('Vendor : BC Forward',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0,
                                        ),
                                        ),
                                        SizedBox(
                                          width:50 ,
                                        ),
                                         Container(
                                          padding: EdgeInsets.all(5.0),
                                          decoration: BoxDecoration( 
                                            color:Colors.green[100],
                                            
                                            borderRadius: BorderRadius.all(Radius.circular(10))),
                                          
                                           child: Text('Approved',
                                           style: TextStyle(color: Colors.green,
                                           fontWeight: FontWeight.bold,
                                           
                                           
                                           ),
                                            
                                           ),
                                         ),
                         
                                      
                         
                                      ],
                                    ),
                                    SizedBox(height: 5.0,),
                         
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      
                                      children:<Widget> [
                                      Text('Client : State Of NY'),
                                      
                                    ],
                                    ),
                                     SizedBox(height: 5.0,),
                                    Row(
                                      children:<Widget> [
                                      Text('Cycle : Weekly'),
                                      SizedBox(width: 120.0,),
                                      Text('Hours : 40'),
                                      
                                    ],
                                    ),
                                     SizedBox(height: 5.0,),
                                   Row(
                                    children:<Widget> [
                                      Container(
                                        padding: EdgeInsets.all(2.0),
                                        margin: EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                        color: Color.fromARGB(120, 2, 134, 243) 
                                        ),
                                        child: Text('Period : 12/02/2020 - 15/03/2024',
                                        style: TextStyle(
                                          color:Color.fromARGB(255, 34, 0, 255),
                                        ),
                                        
                                                         ),
                                       
                                        
                                            
                                      ),
                                      
                                    ],
                                  ),
                         
                                  ],
                                  
                                ),
                         
                              ),
                   //7th subcard
                   
                   Card(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children:<Widget> [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children:<Widget> [
                                        Text('Vendor : BC Forward',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0,
                                        ),
                                        ),
                                        SizedBox(
                                          width:50 ,
                                        ),
                                         Container(
                                          padding: EdgeInsets.all(5.0),
                                          decoration: BoxDecoration( 
                                            color:Colors.green[100],
                                            
                                            borderRadius: BorderRadius.all(Radius.circular(10))),
                                          
                                           child: Text('Approved',
                                           style: TextStyle(color: Colors.green,
                                           fontWeight: FontWeight.bold,
                                           
                                           
                                           ),
                                            
                                           ),
                                         ),
                         
                                      
                         
                                      ],
                                    ),
                                    SizedBox(height: 5.0,),
                         
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      
                                      children:<Widget> [
                                      Text('Client : State Of NY'),
                                      
                                    ],
                                    ),
                                     SizedBox(height: 5.0,),
                                    Row(
                                      children:<Widget> [
                                      Text('Cycle : Weekly'),
                                      SizedBox(width: 120.0,),
                                      Text('Hours : 40'),
                                      
                                    ],
                                    ),
                                     SizedBox(height: 5.0,),
                                   Row(
                                    children:<Widget> [
                                      Container(
                                        padding: EdgeInsets.all(2.0),
                                        margin: EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                        color: Color.fromARGB(120, 2, 134, 243) 
                                        ),
                                        child: Text('Period : 12/02/2020 - 15/03/2024',
                                        style: TextStyle(
                                          color:Color.fromARGB(255, 34, 0, 255),
                                        ),
                                        
                                                         ),
                                       
                                        
                                            
                                      ),
                                      
                                    ],
                                  ),
                         
                                  ],
                                  
                                ),
                         
                              ),
                   // 8th subcard
                   Card(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children:<Widget> [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children:<Widget> [
                                        Text('Vendor : BC Forward',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0,
                                        ),
                                        ),
                                        SizedBox(
                                          width:50 ,
                                        ),
                                         Container(
                                          padding: EdgeInsets.all(5.0),
                                          decoration: BoxDecoration( 
                                            color:Colors.green[100],
                                            
                                            borderRadius: BorderRadius.all(Radius.circular(10))),
                                          
                                           child: Text('Approved',
                                           style: TextStyle(color: Colors.green,
                                           fontWeight: FontWeight.bold,
                                           
                                           
                                           ),
                                            
                                           ),
                                         ),
                         
                                      
                         
                                      ],
                                    ),
                                    SizedBox(height: 5.0,),
                         
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      
                                      children:<Widget> [
                                      Text('Client : State Of NY'),
                                      
                                    ],
                                    ),
                                     SizedBox(height: 5.0,),
                                    Row(
                                      children:<Widget> [
                                      Text('Cycle : Weekly'),
                                      SizedBox(width: 120.0,),
                                      Text('Hours : 40'),
                                      
                                    ],
                                    ),
                                     SizedBox(height: 5.0,),
                                   Row(
                                    children:<Widget> [
                                      Container(
                                        padding: EdgeInsets.all(2.0),
                                        margin: EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                        color: Color.fromARGB(120, 2, 134, 243) 
                                        ),
                                        child: Text('Period : 12/02/2020 - 15/03/2024',
                                        style: TextStyle(
                                          color:Color.fromARGB(255, 34, 0, 255),
                                        ),
                                        
                                                         ),
                                       
                                        
                                            
                                      ),
                                      
                                    ],
                                  ),
                         
                                  ],
                                  
                                ),
                         
                              ),
                   
                   //9th subcard
                   Card(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children:<Widget> [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children:<Widget> [
                                        Text('Vendor : BC Forward',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0,
                                        ),
                                        ),
                                        SizedBox(
                                          width:50 ,
                                        ),
                                         Container(
                                          padding: EdgeInsets.all(5.0),
                                          decoration: BoxDecoration( 
                                            color:Colors.green[100],
                                            
                                            borderRadius: BorderRadius.all(Radius.circular(10))),
                                          
                                           child: Text('Approved',
                                           style: TextStyle(color: Colors.green,
                                           fontWeight: FontWeight.bold,
                                           
                                           
                                           ),
                                            
                                           ),
                                         ),
                         
                                      
                         
                                      ],
                                    ),
                                    SizedBox(height: 5.0,),
                         
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      
                                      children:<Widget> [
                                      Text('Client : State Of NY'),
                                      
                                    ],
                                    ),
                                     SizedBox(height: 5.0,),
                                    Row(
                                      children:<Widget> [
                                      Text('Cycle : Weekly'),
                                      SizedBox(width: 120.0,),
                                      Text('Hours : 40'),
                                      
                                    ],
                                    ),
                                     SizedBox(height: 5.0,),
                                   Row(
                                    children:<Widget> [
                                      Container(
                                        padding: EdgeInsets.all(2.0),
                                        margin: EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                        color: Color.fromARGB(120, 2, 134, 243) 
                                        ),
                                        child: Text('Period : 12/02/2020 - 15/03/2024',
                                        style: TextStyle(
                                          color:Color.fromARGB(255, 34, 0, 255),
                                        ),
                                        
                                                         ),
                                       
                                        
                                            
                                      ),
                                      
                                    ],
                                  ),
                         
                                  ],
                                  
                                ),
                         
                              ),
                   
                   
                   
                   
                   
                   
                   
                    ],
                  ),
                   
                   
                     ),
               ),
             ],
           ),
         
       
 bottomNavigationBar: Container(
    padding: EdgeInsets.all(15.0),
    decoration: BoxDecoration(color: Color(0xFFFFFFFF),   
        borderRadius:BorderRadiusDirectional.only(topStart: Radius.circular(20),
        topEnd: Radius.circular(20),),
        ),
    
  child:   Material(
  
          color: Color.fromARGB(255, 254, 93, 0),
          borderRadius: BorderRadius.all(Radius.circular(20)),
  
          child: InkWell(
  
            onTap: () {
  
              //print('called on tap');
  
            },
  
            child: const SizedBox(
  
              height: kToolbarHeight,
  
              width: double.infinity,
  
              child: Center(
  
                child: Text(
  
                  'Add Timesheet',
  
                  style: TextStyle(
  
                    color: Colors.white,
  
                    fontWeight: FontWeight.bold,
  
                  ),
  
                ),
  
              ),
  
            ),
  
          ),
  
        ),
),
    );
    
}
}