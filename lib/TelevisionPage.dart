import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TeleVision extends StatefulWidget {
  const TeleVision({super.key});

  @override
  State<TeleVision> createState() => _TeleVisionState();
}

class _TeleVisionState extends State<TeleVision> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
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
                          SizedBox(width:15,),
                          IconButton(onPressed: () {} , icon: const Icon(Icons.arrow_back_ios,)),
                        ],
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: Text("TV", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:20,))),],
                  ),
                ),),


              Padding(
                padding: const EdgeInsets.only(top:50.0),
                child: GestureDetector(
                  onTap: () async {

                    String result =   showModalBottomSheet<String>(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft:Radius.circular(20), topRight:Radius.circular(20)),
                          ),
                          width: double.infinity,
                          height:MediaQuery.of(context).size.height*0.3 ,
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
                                      Text("DSTV Subscription", style: TextStyle(fontFamily: 'inter',fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.width*0.03)),
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
                                      Text("GOTV Payment", style: TextStyle(fontFamily: 'inter',fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.width*0.03)),
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
                                      Text("Startime Subscription", style: TextStyle(fontFamily: 'inter',fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.width*0.03)),
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
                      border: Border.all(
                        color: Color(0xFFF3F4F6), // Border color
                        width: 1.0,         // Border width
                      ),
                    ),
                    padding:EdgeInsets.all(14),
                    width:double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text( 'Service Provider',
                          textAlign:TextAlign.start,
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 12),),
                        const Icon(Icons.keyboard_arrow_down_rounded,color: Colors.black, size:20)
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:30.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Color(0xFFF3F4F6), // Border color
                      width: 1.0,         // Border width
                    ),
                  ),
                  padding:EdgeInsets.only(left:13,right: 13),
                  width:double.infinity,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextField(
                          style: TextStyle(
                              fontSize: 12
                          ),
                          decoration: InputDecoration(
                            hintText: 'Smart Card Number', // Set the hint text
                            border: InputBorder.none, // Remove the border
                          ),
                          keyboardType: TextInputType.number,
                          maxLines:1,

                        ),
                      ),
                      Icon(Icons.person_2_outlined,color: Colors.black, size:20)
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top:30.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Color(0xFFF3F4F6), // Border color
                      width: 1.0,         // Border width
                    ),
                  ),
                  padding:EdgeInsets.all(14),
                  width:double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text( 'Plan',
                        textAlign:TextAlign.start,
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 12),),
                      const Icon(Icons.keyboard_arrow_down_rounded,color: Colors.black, size:20)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.centerRight,
                child: Text( 'Balance N100,000',
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 12),),
              ),

              Padding(
                padding: const EdgeInsets.only(top:10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Color(0xFFF3F4F6), // Border color
                      width: 1.0,         // Border width
                    ),
                  ),
                  width:double.infinity,
                  padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.03, right:MediaQuery.of(context).size.width*0.03 ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextField(
                          style: TextStyle(
                              fontSize: 12
                          ),
                          decoration: InputDecoration(
                            hintText: 'Amount', // Set the hint text
                            border: InputBorder.none, // Remove the border
                          ),
                          keyboardType: TextInputType.number,
                          maxLines:1,

                        ),
                      ),
                      SizedBox(width: 1,)
                    ],
                  ),
                ),
              ),
              const SizedBox(height:50,),
              MaterialButton(onPressed: (){ },
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                height:40,
                minWidth: double.infinity,
                textColor:Colors.white ,
                color:const Color(0xFF24064A),
                child: const Text("Continue",style: TextStyle( fontSize:12),),
              )
            ]
            ,)
      ),
    );
  }
}

