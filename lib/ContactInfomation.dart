import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/services.dart';
import 'VerifyYourIdentity.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:google_fonts/google_fonts.dart';

class ContactDetails extends StatefulWidget {
  const ContactDetails({super.key});

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
 bool isSix  = false;
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  TextEditingController _controller3 = TextEditingController();
  TextEditingController _controller4 = TextEditingController();
  TextEditingController _controller5 = TextEditingController();
  TextEditingController _controller6 = TextEditingController();
  FocusNode _focusNode1 = FocusNode();
  FocusNode _focusNode2 = FocusNode();
  FocusNode _focusNode3 = FocusNode();
  FocusNode _focusNode4 = FocusNode();
  FocusNode _focusNode5 = FocusNode();
  FocusNode _focusNode6 = FocusNode();
@override
 void initState(){
  _focusNode1.requestFocus();
   super.initState();
   _controller1.addListener(() {
     if (_controller1.text.characters.length == 1) {
       _focusNode2.requestFocus();
     }
   });

   _controller2.addListener(() {
     if (_controller2.text.characters.length == 1) {
       _focusNode3.requestFocus();
     }
   });

   _controller3.addListener(() {
     if (_controller3.text.length == 1) {
       _focusNode4.requestFocus();
     }
   });

   _controller4.addListener(() {
     if (_controller4.text.length == 1) {
       _focusNode5.requestFocus();
     }
   });
   _controller5.addListener(() {
     if (_controller5.text.length == 1) {
       _focusNode6.requestFocus();
     }
   });

   _controller6.addListener(() {
     if (_controller6.text.length == 1) {
       _focusNode6.unfocus();
       isSix = true;
     }
   });

}

@override
void dispose() {
  super.dispose();
  _focusNode1.dispose();
  _controller1.dispose();
  _focusNode2.dispose();
  _controller2.dispose();
  _focusNode3.dispose();
  _controller3.dispose();
  _focusNode4.dispose();
  _controller4.dispose();
  _focusNode5.dispose();
  _controller5.dispose();
  _focusNode6.dispose();
  _controller6.dispose();
}


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
                        child: Text("Contact Information", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:20,color: Colors.black))),],
                ),
              ),

              SizedBox(height:20,),
              Container(width: MediaQuery.of(context).size.width*0.8, child: Text("This information is needed to open your onepay account",textAlign:TextAlign.center, style: TextStyle(fontFamily: 'inter',fontSize:MediaQuery.of(context).size.width*0.03))),
              SizedBox(height:50,),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0x0C24064A),
                  ),
                  width: double.infinity,
                  padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.03, right:MediaQuery.of(context).size.width*0.03 ,top:MediaQuery.of(context).size.width*0.01,bottom:MediaQuery.of(context).size.width*0.01 ),
                  child: TextField(
                    maxLines: 3,
                    decoration:InputDecoration(
                    border: InputBorder.none,
                    hintText:"Residential Address 1",
                    hintStyle: TextStyle(fontFamily: 'inter',color: Color(0xFF808080),fontSize:MediaQuery.of(context).size.width*0.03),
                  ),)
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
                    maxLines: 3,
                    decoration:InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(fontFamily: 'inter',color: Color(0xFF808080),fontSize:MediaQuery.of(context).size.width*0.03),
                    hintText:"Residential Address 2",
                  ),)
              ),
              SizedBox(height:20,),
              Row(
                children: [
                  Expanded(
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
                            Expanded(child: TextField(decoration:InputDecoration(
                              border: InputBorder.none,
                              hintStyle: TextStyle(fontFamily: 'inter',color: Color(0xFF808080),fontSize:MediaQuery.of(context).size.width*0.03),
                              hintText:"State",
                            ),)),
                            Icon(Icons.keyboard_arrow_down,size: MediaQuery.of(context).size.height*0.032,color: Colors.black,),
                          ],
                        )
                    ),
                  ),

                   SizedBox(width: 15,),
                  Expanded(
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
                            Expanded(child: TextField(decoration:InputDecoration(
                              border: InputBorder.none,
                              hintStyle: TextStyle(fontFamily: 'inter',color: Color(0xFF808080),fontSize:MediaQuery.of(context).size.width*0.03),
                              hintText:"Town",
                            ),)),
                            Icon(Icons.keyboard_arrow_down,size: MediaQuery.of(context).size.height*0.032,color: Colors.black,),
                          ],
                        )
                    ),
                  ),
                ],
              ),
              SizedBox(width: 15,),
              StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                        return CheckboxListTile(
                          title:
                          RichText(
                          text: TextSpan(
                          text: "i understand and agree to Onepay's ",
                          style:   DefaultTextStyle.of(context).style,
                          children:  <TextSpan>[
                            TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(
                                fontFamily: 'inter',
                                fontSize:MediaQuery.of(context).size.width*0.03,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],),),
                          value: timeDilation != 1.0,
                          activeColor: Color(0xFF24064A),
                          contentPadding: EdgeInsets.all(0),
                          selectedTileColor: Color(0xFF24064A),
                          controlAffinity:  ListTileControlAffinity.leading,
                          onChanged: (bool? value) {
                            setState(() {
                              timeDilation = value! ? 3.0 : 1.0;
                            });
                          },
                        );
              }),
              SizedBox(height: 50,),
              MaterialButton(onPressed:  () async {
                showDialog<String>(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                      insetPadding: EdgeInsets.all(0),
                    shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    content: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height*0.6,
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
                          Text("Verify Phone Number", style: TextStyle(fontFamily: 'inter',fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.width*0.06)),
                          SizedBox(height:10,),
                          Text("Enter 6 digit verification code sent to: 08*****7890", textAlign:TextAlign.center, style: TextStyle(fontFamily: 'inter',color:  Colors.grey,fontSize:MediaQuery.of(context).size.width*0.03)),
                          SizedBox(height:50,),
                        StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                          return
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color:  Color(0x0C24064A),
                                  ),
                                  width: 40,
                                  height:40,
                                  padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.03, right:MediaQuery.of(context).size.width*0.03 ,top:MediaQuery.of(context).size.width*0.01,bottom:MediaQuery.of(context).size.width*0.01  ),
                                  child: Center(
                                    child: TextField(
                                      style: TextStyle(fontFamily: 'inter',fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.width*0.045),
                                      keyboardType: TextInputType.number,
                                      controller: _controller1,
                                      focusNode: _focusNode1,
                                      decoration:InputDecoration(
                                      border: InputBorder.none,
                                    ),),
                                  )
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color:  Color(0x0C24064A),
                                  ),
                                  width: 40,
                                  height:40,
                                  padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.03, right:MediaQuery.of(context).size.width*0.03 ,top:MediaQuery.of(context).size.width*0.01,bottom:MediaQuery.of(context).size.width*0.01  ),
                                  child: Center(
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(fontFamily: 'inter',fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.width*0.045),
                                      controller: _controller2,
                                      focusNode: _focusNode2,
                                      decoration:InputDecoration(
                                      border: InputBorder.none,
                                    ),),
                                  )
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color:  Color(0x0C24064A),
                                  ),
                                  width: 40,
                                  height:40,
                                  padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.03, right:MediaQuery.of(context).size.width*0.03 ,top:MediaQuery.of(context).size.width*0.01,bottom:MediaQuery.of(context).size.width*0.01  ),
                                  child: Center(
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(fontFamily: 'inter',fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.width*0.045),
                                      controller: _controller3,
                                      focusNode: _focusNode3,
                                      decoration:InputDecoration(
                                      border: InputBorder.none,
                                    ),),
                                  )
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color:  Color(0x0C24064A),
                                  ),
                                  width: 40,
                                  height:40,
                                  padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.03, right:MediaQuery.of(context).size.width*0.03 ,top:MediaQuery.of(context).size.width*0.01,bottom:MediaQuery.of(context).size.width*0.01  ),
                                  child: Center(
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(fontFamily: 'inter',fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.width*0.045),
                                      controller: _controller4,
                                      focusNode: _focusNode4,
                                      decoration:InputDecoration(
                                      border: InputBorder.none,
                                    ),),
                                  )
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color:  Color(0x0C24064A),
                                  ),
                                  width: 40,
                                  height:40,
                                  padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.03, right:MediaQuery.of(context).size.width*0.03 ,top:MediaQuery.of(context).size.width*0.01,bottom:MediaQuery.of(context).size.width*0.01  ),
                                  child: Center(
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(fontFamily: 'inter',fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.width*0.045),
                                      controller: _controller5,
                                      focusNode: _focusNode5,
                                      decoration:InputDecoration(
                                      border: InputBorder.none,

                                    ),),
                                  )
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color:  Color(0x0C24064A),
                                  ),
                                  width: 40,
                                  height:40,
                                  padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.03, right:MediaQuery.of(context).size.width*0.03 ,top:MediaQuery.of(context).size.width*0.01,bottom:MediaQuery.of(context).size.width*0.01  ),
                                  child: Center(
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(fontFamily: 'inter',fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.width*0.045),
                                      controller: _controller6,
                                      focusNode: _focusNode6,
                                      decoration:InputDecoration(
                                      border: InputBorder.none,
                                    ),),
                                  )
                              ),
                            ],
                          );
                           }
                          ),
                          SizedBox(height: 50,),
                          MaterialButton(onPressed: (){
                            if(isSix) {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return VerifyPage();
                                  },
                                ),
                              );
                            }
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
                              child: Text("Confirm Code", style: TextStyle(fontFamily: 'inter',fontSize:MediaQuery.of(context).size.width*0.03)),
                            ),
                          ),
                          SizedBox(height:10,),

                          SizedBox(height:10,),
                          Container(
                            width: MediaQuery.of(context).size.width*0.3,
                            child: Center(
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  text: "Didn't receive a code? ",
                                  style:   TextStyle(
                                    fontFamily: 'inter',
                                    color: Colors.grey,
                                    fontSize:MediaQuery.of(context).size.width*0.03,
                                  ),
                                  children:  <TextSpan>[
                                    TextSpan(
                                      text: 'Resend',
                                      style: TextStyle(
                                        fontFamily: 'inter',
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize:MediaQuery.of(context).size.width*0.03,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ],),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },

              );
              },
                minWidth:double.infinity,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ) ,
                textColor: Colors.white,
                color: Color(0xFF24064A),
                child:  Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("Continue", style: TextStyle(fontFamily: 'inter',fontSize:MediaQuery.of(context).size.width*0.03)),
                ),
              )
            ],
          ),
        ),
      ),);
  }
}
