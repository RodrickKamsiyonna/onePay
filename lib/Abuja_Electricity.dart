import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:google_fonts/google_fonts.dart';

class Abuja_Electricity extends StatefulWidget {
  const Abuja_Electricity({super.key});

  @override
  State<Abuja_Electricity> createState() => _Abuja_ElectricityState();
}

class _Abuja_ElectricityState extends State<Abuja_Electricity> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
      Padding(
      padding: const EdgeInsets.only(top:90.0),
      child: Container(
        width: double.maxFinite,
        height: 30,
        child: Stack(
          alignment: AlignmentDirectional.centerStart,
          children: [
            Row(
              children: [
                IconButton(onPressed: () {} , icon: const Icon(Icons.arrow_back_ios)),
              ],
            ),
            Align(
                alignment: Alignment.center,
                child: Text("Abuja Electric", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:23 ))),],
        ),
      ),),
           SizedBox(height: 70,),
            Container(
              padding: const EdgeInsets.only(top:20, bottom: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255,240 ,240 ,255),
              ),
              child: const Center(
                child:Text('Confirm',style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black, fontSize:12)),
              ),

            ),
            SizedBox(height: 50,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Type',style: TextStyle( fontSize:12)),
                    SizedBox(height:7,),
                    Text('Service Provider',style: TextStyle(  fontSize:12)),
                    SizedBox(height: 7,),
                    Text('Meter Number',style: TextStyle(fontSize:12)),
                    SizedBox(height: 7,),
                    Text('Amount',style: TextStyle(fontSize:12)),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Prepaid',style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black, fontSize:12)),
                    SizedBox(height: 7,),
                    Text('AFDC',style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black, fontSize:12)),
                    SizedBox(height: 7,),
                    Text('0123456789',style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black, fontSize:12)),
                    SizedBox(height: 7,),
                    Text('N15000',style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black, fontSize:12)),
                  ],
                )
              ],
            ),

            const SizedBox(height:70,),
            MaterialButton(onPressed: (){ },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              height:40,
              minWidth: double.infinity,
              textColor:Colors.white ,
              color:const Color.fromARGB(255,100,100,255),
              child: const Text("Face ID",style: TextStyle( fontSize:12),),
            ),

            const SizedBox(height:30,),
            MaterialButton(onPressed: (){ },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              height:40,
              minWidth: double.infinity,
              textColor:Colors.white ,
              color:const Color.fromARGB(255,100,100,255),
              child: const Text("Pin",style: TextStyle( fontSize:12),),
            )

       ]

      ),);
  }
}
