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
  Color selectedColor = Colors.grey; // Default color

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
                      ElevatedButton(onPressed: (){

                           MySnackBar("Small",context);
                           changeButtonColor('S', Colors.green);

                       },
                           child: Text("S",style: TextStyle(fontSize: 20),),
                         style: ElevatedButton.styleFrom(
                             primary: selectedSize == 'S' ? selectedColor : Colors.grey,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(10)
                           )
                         ),
                       ),


                     SizedBox(width: 10),

                     ElevatedButton(onPressed: (){
                       MySnackBar("Medium",context);
                       changeButtonColor('M', Colors.green);

                     },
                       child: Text("M",style: TextStyle(fontSize: 20),),
                       style: ElevatedButton.styleFrom(
                           primary: selectedSize == 'M' ? selectedColor : Colors.grey,

                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(10)
                           )
                       ),
                     ),
                     SizedBox(width: 10),
                     ElevatedButton(onPressed: (){
                       MySnackBar("Large",context);
                       changeButtonColor('L', Colors.green);

                     },
                       child: Text("L",style: TextStyle(fontSize: 20),),
                       style: ElevatedButton.styleFrom(
                           primary: selectedSize == 'L' ? selectedColor : Colors.grey,

                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(10)
                           )
                       ),
                     ),
                     SizedBox(width: 10),
                     ElevatedButton(onPressed: (){
                       MySnackBar("Extra Large",context);
                       changeButtonColor('XL', Colors.green);

                     },
                       child: Text("XL",style: TextStyle(fontSize: 20),),
                       style: ElevatedButton.styleFrom(
                           primary: selectedSize == 'XL' ? selectedColor : Colors.grey,

                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(10)
                           )
                       ),
                     ),


                   ],
                 ),
                 SizedBox(width: 10),
                 Row(
                   children: [
                     ElevatedButton(onPressed: (){
                       MySnackBar("XXL",context);
                       changeButtonColor('XXL', Colors.green);

                     },
                       child: Text("XXL",style: TextStyle(fontSize: 20),),
                       style: ElevatedButton.styleFrom(
                           primary: selectedSize == 'XXL' ? selectedColor : Colors.grey,
                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(10)
                           )
                       ),
                     ),
                     SizedBox(width: 10),
                     ElevatedButton(onPressed: (){
                       MySnackBar("XXXL",context);
                       changeButtonColor('XXXL', Colors.green);

                     },
                       child: Text("XXXL",style: TextStyle(fontSize: 20),),
                       style: ElevatedButton.styleFrom(
                           primary: selectedSize == 'XXXL' ? selectedColor : Colors.grey,
                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(10)
                           )
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
