import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
class BillsPage extends StatefulWidget {
  const BillsPage({super.key});


  @override
  State<BillsPage> createState() => _BillPageState();
}

class _BillPageState extends State<BillsPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
        statusBarColor: Color(0xFF24064A),
      ),
    );
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF24064A),
      ),
      child: Column(
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
                        SizedBox(width:15,),
                        IconButton(onPressed: () {} , icon: const Icon(Icons.arrow_back_ios, color: Colors.white,size:20,)),
                      ],
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Text("Bills", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:20,color: Colors.white))),],
                ),
              ),),


            SizedBox(height: 40,),

            Container(

              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    clipBehavior: Clip.antiAlias,
                    decoration: const ShapeDecoration(
                      image: DecorationImage(
                        image: AssetImage('asset/betting_image.png'),
                         fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 50,),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left:15,right:15,top:20),
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
                child:  Column(

                  children: [

                    SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment:MainAxisAlignment.start,
                          children: [
                            Icon(Icons.phone),
                            SizedBox(width:10,),
                            Text("Buy Airtime", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:12,color: Colors.black)),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,color:Colors.black,size:20,)
                      ],
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment:MainAxisAlignment.start,
                          children: [
                            Icon(Icons.signal_wifi_4_bar),
                            SizedBox(width:10,),
                            Text("Buy Data", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:12,color: Colors.black)),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,color:Colors.black,size:20,)
                      ],
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment:MainAxisAlignment.start,
                          children: [
                            Icon(Icons.tv),
                            SizedBox(width:10,),
                            Text("Pay TV Subscription", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:12,color: Colors.black)),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,color:Colors.black,size:20,)
                      ],
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment:MainAxisAlignment.start,
                          children: [
                            Icon(Icons.electric_bolt_outlined),
                            SizedBox(width:10,),
                            Text("Pay Electricity Bills", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:12,color: Colors.black)),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,color:Colors.black,size:20,)
                      ],
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment:MainAxisAlignment.start,
                          children: [
                            Icon(Icons.account_balance),
                            SizedBox(width:10,),
                                Text("Betting", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:12,color: Colors.black)),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,color:Colors.black,size:20,)
                      ],
                    ),

                  ],
                ),
              ),
            )

          ]

      ),
    );
  }
}