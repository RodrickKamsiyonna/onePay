import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'ChangePassword.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SecurityPage extends StatefulWidget {

  const SecurityPage({super.key});

  @override
  State<SecurityPage> createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
  Color containerColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
            body: Padding(
                  padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.02,right:MediaQuery.of(context).size.width*0.02,top:MediaQuery.of(context).size.height*0.1),
                  child: Column(
                         crossAxisAlignment: CrossAxisAlignment.stretch,
                         children: [

                           // Container for the Security text and the back button
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
                                     child: Text("Security", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:20,color: Colors.black))),],
                             ),
                           ),

                          SizedBox(height: MediaQuery.of(context).size.height*0.06,),

                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const PasswordChangePage()),
                              );
                            },
                            child: Ink(
                              color: containerColor,
                              width: double.infinity,
                              padding:  EdgeInsets.all(MediaQuery.of(context).size.width*0.03),
                              child: Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: [
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.start,
                                       children: [
                                         Icon(Icons.lock,size: MediaQuery.of(context).size.height*0.03,color:Color(0xFF24064A),),
                                         SizedBox(width: 5,),
                                         Text("Change Password", style: TextStyle(fontFamily: 'inter',fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.width*0.03))
                                       ],
                                     ),
                                       Icon(Icons.arrow_forward_ios,size:MediaQuery.of(context).size.height*0.025,color:Colors.black,),
                                     ],
                              ),
                            ),
                          ),

                            SizedBox(height: 5,),

                           InkWell(
                             onTap: (){

                             },
                             child: Ink(
                               width: double.infinity,
                               padding:  EdgeInsets.all(MediaQuery.of(context).size.width*0.03),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     children: [
                                       Icon(Icons.safety_check,size:MediaQuery.of(context).size.height*0.03,color:Color(0xFF24064A),),
                                       SizedBox(width: 5,),
                                       Text("Biometric Authentication", style: TextStyle(fontFamily: 'inter',fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.width*0.03))
                                     ],
                                   ),
                                   Icon(Icons.arrow_forward_ios,size:MediaQuery.of(context).size.height*0.025,color:Colors.black,),
                                 ],
                               ),
                             ),
                           ),


                           SizedBox(height: 5,),

                           InkWell(
                             onTap: (){},
                             child: Ink(
                               width: double.infinity,
                               padding:  EdgeInsets.all(MediaQuery.of(context).size.width*0.03),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     children: [
                                       Icon(Icons.settings_accessibility,size:MediaQuery.of(context).size.height*0.03,color:Color(0xFF24064A),),
                                       SizedBox(width: 5,),
                                       Text("2FA Settings", style: TextStyle(fontFamily: 'inter',fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.width*0.03))
                                     ],
                                   ),
                                   Icon(Icons.arrow_forward_ios,size:MediaQuery.of(context).size.height*0.025,color:Colors.black,),
                                 ],
                               ),
                             ),
                           ),


                         ],
                  ),
            ),
    );
  }
}
