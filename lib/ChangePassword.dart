import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordChangePage extends StatefulWidget {
  const PasswordChangePage({super.key});

  @override
  State<PasswordChangePage> createState() => _PasswordChangePageState();
}

class _PasswordChangePageState extends State<PasswordChangePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
            padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.03,right:MediaQuery.of(context).size.width*0.03,top:MediaQuery.of(context).size.height*0.1),
            child: Column(
                   children: [
                     Container(
                       width: double.maxFinite,
                       height: 30,
                       child: Stack(
                         alignment: AlignmentDirectional.centerStart,
                         children: [
                           Row(
                             children: [
                               SizedBox(width:15,),
                               IconButton(onPressed: () {} , icon: const Icon(Icons.arrow_back_ios, color: Colors.black,size:20,)),
                             ],
                           ),
                           Align(
                               alignment: Alignment.center,
                               child: Text("Change Password", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:20,color: Colors.black))),],
                       ),
                     ),

                     SizedBox(height:5,),
                     Text("Enter your new password", style: TextStyle(fontFamily: 'inter',fontSize:MediaQuery.of(context).size.width*0.03)),
                     SizedBox(height:50,),
                     Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(12),
                         border: Border.all(
                           color: Color(0xFFF3F4F6), // Border color
                           width: 1.0,         // Border width
                         ),
                       ),
                         width: double.infinity,
                         padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.03, right:MediaQuery.of(context).size.width*0.03 ),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Expanded(child: TextField(decoration:InputDecoration(
                               border: InputBorder.none,
                               hintText:"New Password",
                               hintStyle: TextStyle(fontFamily: 'inter',fontSize:MediaQuery.of(context).size.width*0.03),
                               icon: Icon(Icons.lock,size: MediaQuery.of(context).size.height*0.025,color:Color(0xFF24064A),),
                             ),)),
                             Icon(Icons.visibility_outlined,size: MediaQuery.of(context).size.height*0.025,color: Colors.grey,),
                           ],
                         )
                     ),
                     SizedBox(height:20,),
                     Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(12),
                           border: Border.all(
                             color: Color(0xFFF3F4F6), // Border color
                             width: 1.0,         // Border width
                           ),
                         ),
                         width: double.infinity,
                         padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.03, right:MediaQuery.of(context).size.width*0.03 ),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Expanded(child: TextField(decoration:InputDecoration(
                               border: InputBorder.none,
                               hintStyle: TextStyle(fontFamily: 'inter',fontSize:MediaQuery.of(context).size.width*0.03),
                               hintText:"Confirm Password",
                               icon: Icon(Icons.lock,size: MediaQuery.of(context).size.height*0.025,color:Color(0xFF24064A),),
                             ),)),
                             Icon(Icons.visibility_outlined,size: MediaQuery.of(context).size.height*0.025,color: Colors.grey,),
                           ],
                         )
                     ),

                      SizedBox(height: 50,),
                      MaterialButton(onPressed:  () => showDialog<String>(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              shape:RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)
                              ),
                              content: Container(
                                width: double.infinity,
                                height: MediaQuery.of(context).size.height*0.4,
                                child: Column(
                                         children: [
                                           SizedBox(height:20),
                                           Container(
                                             decoration: const ShapeDecoration(
                                               color: Color(0xFF24064A),
                                               shape: StarBorder(
                                                 points: 20,
                                                 innerRadiusRatio: 0.90,
                                                 pointRounding: 0,
                                                 valleyRounding: 0,
                                                 rotation: 0,
                                                 squash: 0,
                                               ),
                                             ),
                                             padding: EdgeInsets.all(20),
                                             child: Icon(Icons.check,color: Colors.white,size:30,),
                                           ),
                                           SizedBox(height:25,),
                                           Text("Congratulations", style: TextStyle(fontFamily: 'inter',fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.width*0.06)),
                                           SizedBox(height:20,),
                                           Text("You have successfully changed your password", textAlign:TextAlign.center, style: TextStyle(fontFamily: 'inter',color:  Colors.grey,fontSize:MediaQuery.of(context).size.width*0.035)),
                                           SizedBox(height:50,),
                                           MaterialButton(onPressed: (){
                                             Navigator.pop(context, 'OK');
                                           },
                                             minWidth:double.infinity,
                                             elevation: 0,
                                             shape: RoundedRectangleBorder(
                                               borderRadius: BorderRadius.circular(12),
                                             ) ,
                                             textColor: Colors.white,
                                             color:const Color(0xFF24064A),
                                             child:  Padding(
                                               padding: const EdgeInsets.all(20.0),
                                               child: Text("Continue", style: TextStyle(fontFamily: 'inter',fontSize:MediaQuery.of(context).size.width*0.03)),
                                             ),
                                           )
                                         ],
                                ),
                              ),
                            );
                          },

                      ),
                       minWidth:double.infinity,
                       elevation: 0,
                       shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                       ) ,
                       textColor: Colors.white,
                       child:  Padding(
                         padding: const EdgeInsets.all(20.0),
                         child: Text("Continue", style: TextStyle(fontFamily: 'inter',fontSize:MediaQuery.of(context).size.width*0.03)),
                         ),
                        color:Color(0xFF24064A),

                      )

                   ],
                   ),
            ),
             );

  }
}
