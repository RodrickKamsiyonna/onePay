import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:google_fonts/google_fonts.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
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
                child: Text("Services", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:23 ))),],
        ),
      ),),
            Padding(
              padding: const EdgeInsets.only(top:30.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Set the radius value
                ),
                elevation: 0,
                color: const Color.fromARGB(255,240 ,240 ,255),
                child: Container(
                  padding:EdgeInsets.all(10),
                  width:double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Row(
                        children: [
                          const Icon(Icons.phone_android_rounded, color :Colors.deepPurpleAccent),
                          const SizedBox(width:5,),
                          Text( 'Buy Airtime',
                            textAlign:TextAlign.start,
                            style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 12),),],),
                      const Icon(Icons.arrow_forward_ios,color: Colors.black, size:20)
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:30.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Set the radius value
                ),
                elevation: 0,
                color: const Color.fromARGB(255,240 ,240 ,255),
                child: Container(
                  padding:EdgeInsets.all(10),
                  width:double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Iconsax.wifi, color :Colors.greenAccent),
                          const SizedBox(width:5,),
                          Text( 'Buy Data',
                            textAlign:TextAlign.start,
                            style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 12),),],),
                      const Icon(Icons.arrow_forward_ios,color: Colors.black, size:20)
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:30.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Set the radius value
                ),
                elevation: 0,
                color: const Color.fromARGB(255,240 ,240 ,255),
                child: Container(
                  padding:EdgeInsets.all(10),
                  width:double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.tv, color :Colors.redAccent),
                          const SizedBox(width:5,),
                          Text( 'Pay TV Subscription',
                            textAlign:TextAlign.start,
                            style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 12),),],),
                      const Icon(Icons.arrow_forward_ios,color: Colors.black, size:20)
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:30.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Set the radius value
                ),
                elevation: 0,
                color: const Color.fromARGB(255,240 ,240 ,255),
                child: Container(
                  padding:EdgeInsets.all(10),
                  width:double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Iconsax.electricity, color :Colors.blueAccent),
                          const SizedBox(width:5,),
                          Text( 'Pay Electricity Bills',
                            textAlign:TextAlign.start,
                            style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 12),),],),
                      const Icon(Icons.arrow_forward_ios,color: Colors.black, size:20)
                    ],
                  ),
                ),
              ),
            ),
          ]
      )
    );
  }
}
