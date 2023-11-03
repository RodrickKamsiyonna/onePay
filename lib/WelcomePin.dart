import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'AccoutModel.dart';
import 'package:google_fonts/google_fonts.dart';

class PinPage extends StatefulWidget {
  const PinPage({super.key});

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  int color_count =  0;
  Color Pointcolor(int position){
    if(position <= color_count){
      return Colors.purple;
    }else{
      return Colors.purpleAccent;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 45 , right:  45, top:50,bottom: 0),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
        Container(
         padding: EdgeInsets.all(30.0),
         decoration: BoxDecoration(
         shape: BoxShape.circle,
         border: Border.all(
          color: Colors.grey, // Border color
          width: 1.0,         // Border width
        ),
        ),
      child: Center(child: Icon(Icons.person_2_outlined))
       ),

             SizedBox(height: 10,),
        const Text(
          "Welcome Joan",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ) ,
             const Text(
               "Please sign in to continue",
               style: TextStyle(
                 fontSize: 12,
                 color: Colors.grey
               ),
             ),

             SizedBox(height: 50,),

              Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Icon(Icons.circle_rounded,color: Pointcolor(1),size: 12,),
                 SizedBox(width: 23,),
                 Icon(Icons.circle_rounded,color: Pointcolor(2),size: 12,),
                 SizedBox(width: 23,),
                 Icon(Icons.circle_rounded,color: Pointcolor(3),size: 12,),
                 SizedBox(width: 23,),
                 Icon(Icons.circle_rounded,color: Pointcolor(4),size: 12,),
                 SizedBox(width: 23,),
                 Icon(Icons.circle_rounded,color: Pointcolor(5),size: 12,),
                 SizedBox(width: 23,),
                 Icon(Icons.circle_rounded,color: Pointcolor(6),size: 12,),
               ],
             ),

             SizedBox(height: 30,),

             Expanded(
               child: GridView(
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 3, // Number of columns in the grid
                   mainAxisSpacing: 20.0, // Spacing between rows
                   crossAxisSpacing: 35.0, // Spacing between columns
                 ),
                 children: List.generate(12, (index){
                   if(index <= 8){
                     return  GestureDetector(
                       onTap: (){
                        setState(() {
                          if(color_count !=  6) {
                            color_count = color_count + 1;
                          }else{
                            // Load another Page
                          }
                        });
                       },
                       child: Container(
                         width: 100,
                          height: 100,
                           padding: EdgeInsets.all(5.0),
                           decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             border: Border.all(
                               color: Colors.grey, // Border color
                               width: 1.0,         // Border width
                             ),
                           ),
                           child: Center(child: Text("${index+1}" , style: TextStyle(fontSize:30,),), )
                       ),
                     );
                   }else if(index == 9){
                     return  Container(
                         width: 100,
                         height: 100,
                         padding: EdgeInsets.all(5.0),
                         decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           border: Border.all(
                             color: Colors.grey, // Border color
                             width: 1.0,         // Border width
                           ),
                         ),
                         child: Center(child: Text("Forgot?" , style: TextStyle(fontSize:12,fontWeight: FontWeight.bold, color: Colors.purpleAccent),),)
                     );
                   }else if(index == 10){
                     return Container(
                         width: 100,
                         height: 100,
                         padding: EdgeInsets.all(5.0),
                         decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           border: Border.all(
                             color: Colors.grey, // Border color
                             width: 1.0,         // Border width
                           ),
                         ),
                         child: Center(child: Text("0" , style: TextStyle(fontSize:30,),),)
                     );
                   }else if(index==11){
                     return  Icon(Icons.settings_overscan_sharp,color: Colors.purpleAccent,);
                   }
                   return Placeholder();
                 }
                 ),
               ),
             ),
             const Text("Sign out?",style:TextStyle(fontSize:15,color:Colors.purpleAccent),),
             SizedBox(height: 20,)
           ],
        )
       );
  }
}
