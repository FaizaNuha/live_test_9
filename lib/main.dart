import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homescreen(),
    );
  }
}

class Homescreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  return _homeState();
  }

}

class _homeState extends State<Homescreen>{


  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message),
          duration: Duration(seconds: 3) ,
        )
    );
  }

  String selectedSize = '';
  Color selectedColor = Colors.blue; // Default color

  void changeButtonColor(String size, Color color) {
    setState(() {
      selectedSize = size;
      selectedColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Size Selector",style: TextStyle(fontSize: 20),),
       ),
      body: Padding(padding: EdgeInsets.all(10),

         child: Center(
           child: Container(

             alignment: AlignmentDirectional.center,
             child:  Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Row(
                   children: [
                     Container(
                       height: 50,
                       width: 80,
                       child: ElevatedButton(onPressed: (){
                           MySnackBar("Small",context);
                           changeButtonColor('Small', Colors.green);

                       },
                           child: Text("S",style: TextStyle(fontSize: 20),),
                         style: ElevatedButton.styleFrom(
                             primary: selectedSize == 'Large' ? selectedColor : null,
                           backgroundColor: Colors.grey,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(10)
                           )
                         ),
                       ),
                     ),

                     SizedBox(width: 10),

                     Container(
                       height: 50,
                       width: 80,
                       child: ElevatedButton(onPressed: (){
                         MySnackBar("Small",context);
                         changeButtonColor('Small', Colors.green);

                       },
                         child: Text("S",style: TextStyle(fontSize: 20),),
                         style: ElevatedButton.styleFrom(
                             primary: selectedSize == 'Large' ? selectedColor : null,
                             backgroundColor: Colors.grey,
                             shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(10)
                             )
                         ),
                       ),
                     ),
                     SizedBox(width: 10),
                     Container(
                       height: 50,
                       width: 80,
                       child: ElevatedButton(onPressed: (){
                         MySnackBar("Small",context);
                         changeButtonColor('Small', Colors.green);

                       },
                         child: Text("S",style: TextStyle(fontSize: 20),),
                         style: ElevatedButton.styleFrom(
                             primary: selectedSize == 'Large' ? selectedColor : null,
                             backgroundColor: Colors.grey,
                             shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(10)
                             )
                         ),
                       ),
                     ),
                     SizedBox(width: 10),
                     Container(
                       height: 50,
                       width: 80,
                       child: ElevatedButton(onPressed: (){
                         MySnackBar("Small",context);
                         changeButtonColor('Small', Colors.green);

                       },
                         child: Text("S",style: TextStyle(fontSize: 20),),
                         style: ElevatedButton.styleFrom(
                             primary: selectedSize == 'Large' ? selectedColor : null,
                             backgroundColor: Colors.grey,
                             shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(10)
                             )
                         ),
                       ),
                     ),


                   ],
                 ),
                 SizedBox(width: 10),
                 Row(
                   children: [
                     Container(
                       height: 50,
                       width: 80,
                       child: ElevatedButton(onPressed: (){
                         MySnackBar("Small",context);
                         changeButtonColor('Small', Colors.green);

                       },
                         child: Text("S",style: TextStyle(fontSize: 20),),
                         style: ElevatedButton.styleFrom(
                             primary: selectedSize == 'Large' ? selectedColor : null,
                             backgroundColor: Colors.grey,
                             shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(10)
                             )
                         ),
                       ),
                     ),
                     SizedBox(width: 10),
                     Container(
                       height: 50,
                       width: 80,
                       child: ElevatedButton(onPressed: (){
                         MySnackBar("Small",context);
                         changeButtonColor('Small', Colors.green);

                       },
                         child: Text("S",style: TextStyle(fontSize: 20),),
                         style: ElevatedButton.styleFrom(
                             primary: selectedSize == 'Large' ? selectedColor : null,
                             backgroundColor: Colors.grey,
                             shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(10)
                             )
                         ),
                       ),
                     ),



                   ],
                 )
               ],


             ),
           ),
         ),

      ) ,
     );
  }

}
