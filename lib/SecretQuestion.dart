import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/services.dart';
import 'ConfirmDetails.dart';
import 'package:google_fonts/google_fonts.dart';

class SecretPage extends StatelessWidget {
  const SecretPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
        padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.03,right:MediaQuery.of(context).size.width*0.03,top:MediaQuery.of(context).size.height*0.1),
    child: SingleChildScrollView(
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
    IconButton(onPressed: () {} , icon: const Icon(Icons.arrow_back, color: Colors.black,size:20,)),
    ],
    ),
    Align(
    alignment: Alignment.center,
    child: Text("Secret Question", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:20,color: Colors.black))),],
    ),
    ),

      SizedBox(height:20,),
      Container(width: MediaQuery.of(context).size.width*0.8, child: Text("Create a security question for additional security when making changes to your account",textAlign:TextAlign.center, style: TextStyle(fontFamily: 'inter',fontSize:MediaQuery.of(context).size.width*0.03))),
      SizedBox(height:50,),

      InkWell(
        onTap:  () async {

          String result =   showModalBottomSheet<String>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(20), topRight:Radius.circular(20)),
                ),
                width: double.infinity,
                height:MediaQuery.of(context).size.height*0.5 ,
                child: ListView(
                  children: [

                    Center(child: Container(width:30, child: Divider(thickness:3, color: Colors.grey,height: MediaQuery.of(context).size.width*0.03,))),
                    SizedBox(height : MediaQuery.of(context).size.width*0.05),
                    InkWell(
                      onTap: (){

                      },
                      child: Ink(
                        width: double.infinity,
                        padding:  EdgeInsets.all(MediaQuery.of(context).size.width*0.03),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
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
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Text("Mother’s maiden name?", style: TextStyle(fontFamily: 'inter',fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.width*0.03)),
                          ],
                        ),
                      ),
                    ),


                    InkWell(
                      onTap: (){

                      },
                      child: Ink(
                        width: double.infinity,
                        padding:  EdgeInsets.all(MediaQuery.of(context).size.width*0.03),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
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
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Text("Name of first pet?", style: TextStyle(fontFamily: 'inter',fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.width*0.03)),
                          ],
                        ),
                      ),
                    ),


                    InkWell(
                      onTap: (){

                      },
                      child: Ink(
                        width: double.infinity,
                        padding:  EdgeInsets.all(MediaQuery.of(context).size.width*0.03),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
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
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Text("Best friend’s fear?", style: TextStyle(fontFamily: 'inter',fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.width*0.03)),
                          ],
                        ),
                      ),
                    ),


                    InkWell(
                      onTap: (){

                      },
                      child: Ink(
                        width: double.infinity,
                        padding:  EdgeInsets.all(MediaQuery.of(context).size.width*0.03),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
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
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Text("What scares you the most?", style: TextStyle(fontFamily: 'inter',fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.width*0.03)),
                          ],
                        ),
                      ),
                    ),


                    InkWell(
                      onTap: (){

                      },
                      child: Ink(
                        width: double.infinity,
                        padding:  EdgeInsets.all(MediaQuery.of(context).size.width*0.03),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
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
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Text("Secret dream?", style: TextStyle(fontFamily: 'inter',fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.width*0.03)),
                          ],
                        ),
                      ),
                    ),


                    InkWell(
                      onTap: (){

                      },
                      child: Ink(
                        width: double.infinity,
                        padding:  EdgeInsets.all(MediaQuery.of(context).size.width*0.03),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
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
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Text("Word of advice to your self", style: TextStyle(fontFamily: 'inter',fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.width*0.03)),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              );
            },
          ) as String;

        },
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color:  Color(0x0C24064A),
            ),
            width: double.infinity,
            padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.03, right:MediaQuery.of(context).size.width*0.03 ,top:MediaQuery.of(context).size.width*0.01,bottom:MediaQuery.of(context).size.width*0.01 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: TextField(

                  decoration:InputDecoration(
                  border: InputBorder.none,
                  hintStyle: TextStyle(fontFamily: 'inter',color: Color(0xFF808080),fontSize:MediaQuery.of(context).size.width*0.03),
                  hintText:"Secret Question",
                ),
                  readOnly: true,
                )),
                Icon(Icons.keyboard_arrow_down,size: MediaQuery.of(context).size.height*0.032,color: Colors.black,),
              ],
            )
        ),
      ),

      SizedBox(height:20,),
      Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color:  Color(0x0C24064A),
          ),
          width: double.infinity,
          padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.03, right:MediaQuery.of(context).size.width*0.03 ,top:MediaQuery.of(context).size.width*0.01,bottom:MediaQuery.of(context).size.width*0.01  ),
          child: TextField(
            decoration:InputDecoration(
              border: InputBorder.none,
              hintStyle: TextStyle(fontFamily: 'inter',color: Color(0xFF808080),fontSize:MediaQuery.of(context).size.width*0.03),
              hintText:"Answer",
            ),)
      ),
      SizedBox(height: 50,),

      MaterialButton(onPressed: (){
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return ConfirmDetails();
            },
          ),
        );
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
          child: Text("Next", style: TextStyle(fontFamily: 'inter',fontSize:MediaQuery.of(context).size.width*0.03)),
        ),
      ),

    ],),),),);
  }
}
