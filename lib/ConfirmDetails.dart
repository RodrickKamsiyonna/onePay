import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/services.dart';
import 'AboutOnePay.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmDetails extends StatelessWidget {
  const ConfirmDetails({super.key});

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
    child: Text("Confirm Details", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:20,color: Colors.black))),],
    ),
    ),
    SizedBox(height:50,),
    Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text("Korede Gold",style: TextStyle(fontWeight:FontWeight.bold, fontFamily: 'inter',color:Colors.grey,fontSize:MediaQuery.of(context).size.width*0.035),),
       Text("Legal Name",style: TextStyle(fontFamily: 'inter',fontSize:MediaQuery.of(context).size.width*0.03),),
    SizedBox(height: 20,),
    Text("March 11,1995",style: TextStyle(fontWeight:FontWeight.bold, fontFamily: 'inter',color:Colors.grey,fontSize:MediaQuery.of(context).size.width*0.035),),
    Text("Birthday",style: TextStyle(fontFamily: 'inter',fontSize:MediaQuery.of(context).size.width*0.03),),
    SizedBox(height: 20,),
    Text("123 Abc Street, Abuja, Nigeria",style: TextStyle(fontWeight:FontWeight.bold, fontFamily: 'inter',fontSize:MediaQuery.of(context).size.width*0.035),),
    Text("Residential Address",style: TextStyle(fontFamily: 'inter',color:Colors.grey,fontSize:MediaQuery.of(context).size.width*0.03),),
    SizedBox(height: 20,),
    Text("1234567890",style: TextStyle(fontWeight:FontWeight.bold, fontFamily: 'inter',fontSize:MediaQuery.of(context).size.width*0.035),),
    Text("BVN Number",style: TextStyle(fontFamily: 'inter',color:Colors.grey,fontSize:MediaQuery.of(context).size.width*0.03),),
    SizedBox(height: 50,),
      ],
    ),
    MaterialButton(onPressed: (){
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext context) {
            return AboutPage();
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
      const SizedBox(height: 20,),
      InkWell(
        onTap: (){},
        child: Container(
          padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color:  Color(0x0C24064A),
            ),
            width: double.infinity,
            child: Center(child: Text("I'd like make to changes", style: TextStyle(fontFamily: 'inter',color: Colors.grey,fontSize:MediaQuery.of(context).size.width*0.03))),
        ),
      ),
    ],),),),);
  }
}
