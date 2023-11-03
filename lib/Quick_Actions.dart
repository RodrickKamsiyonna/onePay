import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class QuickActionsRow extends StatefulWidget {
  const QuickActionsRow({super.key});

  @override
  State<QuickActionsRow> createState() => _QuickActionsRowState();
}

class _QuickActionsRowState extends State<QuickActionsRow> {

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(top:30.0),
      child: Column(
        children: [const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Quick Action',
              textAlign:TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12),),
            Text('See all',
              textAlign:TextAlign.end,
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 12),),],
        ),
          Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             
             children: [
            Padding(
               padding: const EdgeInsets.only(top:10),
               child :Card(
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(10), // Set the radius value
                 ),
               elevation: 0,
               color: const Color.fromARGB(255,240 ,240 ,255),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: const Center(
                    child: Icon(Iconsax.call,color: Colors.deepPurpleAccent),
                  ),
                ),),),
             Padding(
               padding: EdgeInsets.only(top:10),
               child :Card(
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(10), // Set the radius value
                 ),
               elevation: 0,
               color: Color.fromARGB(255,240 ,240 ,255),
               child: Container(
                 padding:EdgeInsets.all(15),
                 child: const Center(
                 child: Icon(Iconsax.wifi, color: Colors.greenAccent,),
              ),
               ),),),
             Padding(
                padding: const EdgeInsets.only(top:10),
                child :Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Set the radius value
                  ),
                elevation: 0,
                color: const Color.fromARGB(255,240 ,240 ,255),
                child: Container(
                  padding:const EdgeInsets.all(15),
                  child: const Center(
                  child: Icon(Iconsax.electricity,color: Colors.blueAccent,),
             ),
                ),),),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child :Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Set the radius value
                  ),
                  elevation: 0,
                  color: const Color.fromARGB(255,240 ,240 ,255),
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: const Center(
                  child: Icon(Iconsax.screenmirroring, color:Colors.deepOrangeAccent),
                  ),
                ),),),
               Padding(
                 padding: const EdgeInsets.only(top:10),
                 child :Card(
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10), // Set the radius value
                   ),
                   elevation: 0,
                   color: const Color.fromARGB(255,240 ,240 ,255),
                   child: Container(
                     padding: EdgeInsets.all(15),
                     child: const Center(
                       child: Icon(Iconsax.car,color:Colors.purpleAccent,),
                     ),
                   ),),)
             ],
      ),]
      ),
    );
  }
}
