import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/services.dart';
import 'SecretQuestion.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyPage extends StatelessWidget {
  const VerifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                child: Text("Verify Your Identity", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:20,color: Colors.black))),],
        ),
      ),

          SizedBox(height:20,),
          Container(width: MediaQuery.of(context).size.width*0.8, child: Text("Your BVN is needed to make transactions between your banks easier",textAlign:TextAlign.center, style: TextStyle(fontFamily: 'inter',fontSize:MediaQuery.of(context).size.width*0.03))),
          SizedBox(height:50,),
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
                  hintText:"BVN Number",
                ),)
          ),
          SizedBox(height: 50,),
          MaterialButton(onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return SecretPage();
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

        ],),),),
    );
  }
}
