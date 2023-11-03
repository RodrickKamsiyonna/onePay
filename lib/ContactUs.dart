import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
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
                        child: Text("Customer Support", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:20,color: Colors.white))),],
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
                        image: AssetImage('asset/support.png'),
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
                            Icon(Icons.contact_support),
                            SizedBox(width:10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Contact Us", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:MediaQuery.of(context).size.width*0.04,color: Colors.black)),
                                Text("Phone Number", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:MediaQuery.of(context).size.width*0.03,color:Color(0x7F0A0A0A))),
                              ],
                            ),
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
                            Icon(Icons.question_answer_rounded),
                            SizedBox(width:10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("FAQs", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:MediaQuery.of(context).size.width*0.04,color: Colors.black)),
                                Text("Personal detail of the user", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:MediaQuery.of(context).size.width*0.03,color:Color(0x7F0A0A0A))),
                              ],
                            ),

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
                            Icon(Icons.article_sharp),
                            SizedBox(width:10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Articles ans Tutorials", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:MediaQuery.of(context).size.width*0.04,color: Colors.black)),
                                Text("Email Address", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:MediaQuery.of(context).size.width*0.03,color:Color(0x7F0A0A0A))),
                              ],
                            ),
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