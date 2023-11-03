import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
        padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.03,right:MediaQuery.of(context).size.width*0.03,top:MediaQuery.of(context).size.height*0.1),
    child: SingleChildScrollView(
    child: Column(
    children: [
      Text("About Onepay", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:20,color: Colors.black)),
      const SizedBox(height: 40,),
      Container(
        width: 100,
        height: 100,
         decoration: const BoxDecoration(
           image:DecorationImage(
               image: AssetImage("asset/onepay_about.png"),),
         ),
      ),
      const SizedBox(height: 40,),
      Container(
        width: double.infinity,
        child: Text("OnePay is a revolutionary financial platform that simplifies your life and empowers your financial journey. It allows you to settle bills, including cable TV subscriptions, data bundles, and airtime, and offers investment opportunities.",
            textAlign:TextAlign.start, style: TextStyle(fontFamily: 'inter',fontSize:MediaQuery.of(context).size.width*0.03)),
      ),
      const SizedBox(height: 20,),
      Container(
        width: double.infinity,
        child: Text("OnePay's cutting-edge account aggregation feature enables seamless interaction with local bank accounts, bringing all your finances under one roof.",
            textAlign:TextAlign.start, style: TextStyle(fontFamily: 'inter',fontSize:MediaQuery.of(context).size.width*0.03)),
      ),
      const SizedBox(height: 20,),
      Container(
        width: double.infinity,
        child: Text("Experience convenience, seize opportunities, and take control of your financial future with OnePay, a secure, user-friendly platform that revolutionizes the future of finance.",
            textAlign:TextAlign.start, style: TextStyle(fontFamily: 'inter',fontSize:MediaQuery.of(context).size.width*0.03)),
      ),
      const SizedBox(height: 40,),
      MaterialButton(onPressed: (){
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return Placeholder();
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
