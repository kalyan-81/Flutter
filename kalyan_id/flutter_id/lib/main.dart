//state less widget

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: KalyanCard()
//   ));
// }


// class KalyanCard extends StatelessWidget {
//   const KalyanCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[900],
//       appBar: AppBar(
//         title: const Text('Kalyan ID card'),
//         centerTitle: true,
//         backgroundColor: Colors.grey[850],
//         elevation: 0.0,
//       ),
//       body:Padding(
//         padding:const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
//         child:Column(
//           crossAxisAlignment:CrossAxisAlignment.start ,
//           children:<Widget> [
//             const Center(
//               child: CircleAvatar(
//                 backgroundImage: AssetImage('assets/PHOTO.jpg'),
//                 radius: 50.0,
//                 ),
//             ),
//             Divider(
//               height: 90.0,
//               color:Colors.grey[800],
//             ),
//             const Text(
//               'Name',
//                 style:TextStyle(
//                 color:Colors.grey,
//                 letterSpacing: 2.0,
//               ) ,
//               ),
//               const SizedBox(height: 30.0,),
//               const Text(
//               'Kalyan Cherukupally',
//               style:TextStyle(
//                 color:Colors.amberAccent,
//                 letterSpacing: 2.0,
//                 fontSize: 28.0,
//                 fontWeight: FontWeight.bold,
//               ) ,
//               ),
//               const SizedBox(height: 30.0,),
//               const Text(
//               'Current Level',
//               style:TextStyle(
//                 color:Colors.grey,
//                 letterSpacing: 2.0,
//                 fontSize: 28.0,
//                 fontWeight: FontWeight.bold,
//               ) ,
//               ),
//                const SizedBox(height: 30.0,),
//                 const Text(
//               '8',
//                 style:TextStyle(
//                 color:Colors.amberAccent,
//                 letterSpacing: 2.0,
//                 fontSize: 28.0,
//                 fontWeight: FontWeight.bold,
//               ) ,
//               ),
//               const SizedBox(height:30.0),
//               Row(
//                 children: <Widget>[
//                   Icon(
//                     Icons.email,
//                     color: Colors.grey[400],
//                   ),
//                   const SizedBox(width: 10.0,),
//                   Text(
//                     'kalyancheru@gmail.com',
//                     style: TextStyle(
//                       color: Colors.grey[400],
//                       fontSize: 18.0,
//                       letterSpacing: 1.0,

//                     ),
//                   ),
//                 ],
//               )
//           ],
//         ) ,
//         )
//     );
//   }
// }


//statefull widget

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: KalyanCard()
  ));
}


class KalyanCard extends StatefulWidget {
  const KalyanCard({super.key});

  @override
  State<KalyanCard> createState() => _KalyanCardState();
}

class _KalyanCardState extends State<KalyanCard> {
  int level=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Kalyan ID card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            level+=1;
          });
          },
          child: Icon(Icons.add),
      ),
      body:Padding(
        padding:const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child:Column(
          crossAxisAlignment:CrossAxisAlignment.start ,
          children:<Widget> [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/PHOTO.jpg'),
                radius: 50.0,
                ),
            ),
            Divider(
              height: 90.0,
              color:Colors.grey[800],
            ),
            const Text(
              'Name',
                style:TextStyle(
                color:Colors.grey,
                letterSpacing: 2.0,
              ) ,
              ),
              const SizedBox(height: 30.0,),
              const Text(
              'Kalyan Cherukupally',
              style:TextStyle(
                color:Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ) ,
              ),
              const SizedBox(height: 30.0,),
              const Text(
              'Current Level',
              style:TextStyle(
                color:Colors.grey,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ) ,
              ),
               const SizedBox(height: 30.0,),
               Text(
              '$level',
                style:const TextStyle(
                color:Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ) ,
              ),
              const SizedBox(height:30.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(width: 10.0,),
                  Text(
                    'kalyancheru@gmail.com',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.0,
                      letterSpacing: 1.0,

                    ),
                  ),
                ],
              )
          ],
        ) ,
        ),
    );
  }
}
