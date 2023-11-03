import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.white,
          statusBarColor: Color(0xFF24064A),
      ),
    );
    return  Container(
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
      child: Text("Profile", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:20,color: Colors.white))),],
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
                    width: 60,
                    height: 60,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                        image: NetworkImage("https://via.placeholder.com/60x60"),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Korede Gold',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.50,
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment:MainAxisAlignment.start,
                        children: [
                         Icon(Iconsax.user),
                         SizedBox(width:10,),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("User Profile", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:12,color: Colors.black)),
                             SizedBox(height:5,),
                             Text("Personal detail of the user", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:10,color: Colors.grey)),
                           ],
                         )
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios,color:Colors.black,size:20,)
                    ],
                  ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment:MainAxisAlignment.start,
                          children: [
                            Icon(Icons.shield_outlined),
                            SizedBox(width:10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Security Settings", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:12,color: Colors.black)),
                                SizedBox(height:5,),
                                Text("Phone Number", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:10,color: Colors.grey)),
                              ],
                            )
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,color:Colors.black,size:20,)
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment:MainAxisAlignment.start,
                          children: [
                            Icon(Iconsax.book),
                            SizedBox(width:10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Connected Accounts", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:12,color: Colors.black)),
                                SizedBox(height:5,),
                                Text("Email Address", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:10,color: Colors.grey)),
                              ],
                            )
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,color:Colors.black,size:20,)
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment:MainAxisAlignment.start,
                          children: [
                            Icon(Icons.notifications_none_outlined),
                            SizedBox(width:10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Notifications Preferences", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:12,color: Colors.black)),
                                SizedBox(height:5,),
                                Text("Close onepay account", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:10,color: Colors.grey)),
                              ],
                            )
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,color:Colors.black,size:20,)
                      ],
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment:MainAxisAlignment.start,
                          children: [
                            Icon(Iconsax.chart_1),
                            SizedBox(width:10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Investment Overview", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:12,color: Colors.black)),
                                SizedBox(height:5,),
                                Text("Close onepay account", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:10,color: Colors.grey)),
                              ],
                            )
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,color:Colors.black,size:20,)
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment:MainAxisAlignment.start,
                          children: [
                            Icon(Icons.shield_outlined),
                            SizedBox(width:10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Transactions", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:12,color: Colors.black)),
                                SizedBox(height:5,),
                                Text("All Transaction and Receipts", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:10,color: Colors.grey)),
                              ],
                            )
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,color:Colors.black,size:20,)
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment:MainAxisAlignment.start,
                          children: [
                            Icon(Icons.shield_outlined),
                            SizedBox(width:10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Legal and Privacy ", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:12,color: Colors.black)),
                                SizedBox(height:5,),
                                Text("Close onepay account", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:10,color: Colors.grey)),
                              ],
                            )
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
