import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/services.dart';
import 'ContactInfomation.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactInfoPage extends StatelessWidget {
   ContactInfoPage({super.key});

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
                        child: Text("Tell us about you", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:20,color: Colors.black))),],
                ),
              ),

              SizedBox(height:20,),
              Text("This information will help you secure your data", style: TextStyle(fontFamily: 'inter',fontSize:MediaQuery.of(context).size.width*0.03)),
              SizedBox(height:50,),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0x0C24064A),
                  ),
                  width: double.infinity,
                  padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.03, right:MediaQuery.of(context).size.width*0.03 ,top:MediaQuery.of(context).size.width*0.01,bottom:MediaQuery.of(context).size.width*0.01 ),
                  child: TextField(decoration:InputDecoration(
                    border: InputBorder.none,
                    hintText:"Legal first name",
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
                  child: TextField(decoration:InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(fontFamily: 'inter',color: Color(0xFF808080),fontSize:MediaQuery.of(context).size.width*0.03),
                    hintText:"Lagal last name",
                  ),)
              ),
              SizedBox(height:20,),
              Container(
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
                        hintText:"Birthday",
                      ),)),
                      Icon(Icons.keyboard_arrow_down,size: MediaQuery.of(context).size.height*0.032,color: Colors.black,),
                    ],
                  )
              ),
              SizedBox(height: 50,),
              MaterialButton(onPressed: (){
                          Navigator.of(context).push(
                          MaterialPageRoute(
                          builder: (BuildContext context) {
                          return ContactDetails();
                          },
                          ),
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

