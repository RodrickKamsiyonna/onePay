import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:google_fonts/google_fonts.dart';
class FundPage extends StatefulWidget {
  const FundPage({super.key});

  @override
  State<FundPage> createState() => _FundPageState();
}

class _FundPageState extends State<FundPage> {
  Widget  container = const ProfileBank();
  bool    colorstate =  true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child:Column(
              children: [
          Padding(
          padding: const EdgeInsets.only(top:90.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              IconButton(onPressed: () {} , icon: const Icon(Icons.arrow_back_ios)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:50.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap:(){
                          setState(() {
                            container = ProfileBank();
                            colorstate = true;
                          });
                        },
                        child: const Text('Bank Transfer',
                          textAlign:TextAlign.start,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12),),
                      ),
                      SizedBox(width: 10,),
                     Divider(
                            thickness: 3,
                            color: colorstate?Color.fromARGB(255,100,100,255):Colors.grey,
                     )
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap:(){
                          setState(() {
                            container = DebitCard();
                            colorstate =false;
                          });
                        },
                        child: const Text('Debit Card',
                          textAlign:TextAlign.start,
                          style: TextStyle(
                              fontWeight:FontWeight.bold ,
                              fontSize: 12),),
                      ),
                      SizedBox(width: 10,),
                       Divider(
                        thickness: 3,
                        color: !colorstate?Color.fromARGB(255,100,100,255):Colors.grey,
                      )],),),]),),
                container
              ]
          ),
        ),
      ));
  }
}
class ProfileBank extends StatefulWidget {
  const ProfileBank({super.key});

  @override
  State<ProfileBank> createState() => _ProfileBankState();
}

class _ProfileBankState extends State<ProfileBank> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top:20),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.stretch,
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                  Text("Destination Account", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:12),),
                   IconButton(onPressed: () {} , icon: const Icon(Iconsax.copy)),
                 ],
               ),
               Text("Account Number : 408308430", style: GoogleFonts.roboto(fontSize:12),),
               SizedBox(height:15,),
               Text("Account Name : Korede GOld", style: GoogleFonts.roboto(fontSize:12),),
               SizedBox(height:15,),
               Text("Bank Name : Access Bank", style: GoogleFonts.roboto(fontSize:12),),
               const SizedBox(height:60,),
               MaterialButton(onPressed: (){ },
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(10),
                 ),
                height:40,
                minWidth: double.infinity,
                textColor:Colors.white ,
                color:const Color.fromARGB(255,100,100,255),
                child: const Text("Continue",style: TextStyle( fontSize:12),),
               )
             ],
    ),
    );
  }
}

class DebitCard extends StatefulWidget {
  const DebitCard({super.key});

  @override
  State<DebitCard> createState() => _DebitCardState();
}

class _DebitCardState extends State<DebitCard> {
  String selectedValue = 'card_yes';

  void handleRadioValueChanged(String? value) {
    setState(() {
      selectedValue = value!;
    });
  }
  @override
  Widget build(BuildContext context) {
      return Padding(padding: EdgeInsets.only(top:30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.only(left:15),
            width: double.infinity,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255,240 ,240 ,255),
                borderRadius: BorderRadius.circular(10)
            ),
            child:const TextField(
              style: TextStyle(
                fontSize: 12
              ),
              decoration: InputDecoration(
                hintText: 'Enter Amount (NGN', // Set the hint text
                border: InputBorder.none, // Remove the border
              ),
              keyboardType: TextInputType.number,
              maxLines:1,

            ),
          ),
          RadioListTile<String>(
            activeColor: Colors.black,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            contentPadding: EdgeInsets.only(top:30,left:0,right: 0 ,bottom: 0),
            title: const Text('Use Existing Card ( 123*** *** 6789)',style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black, fontSize:12)),
            value: 'card_yes',
            groupValue: selectedValue,
            onChanged: handleRadioValueChanged,
          ),
          RadioListTile<String>(
            activeColor: Colors.black,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            contentPadding: EdgeInsets.only(top:0,left:0,right: 0),
            title: const Text('Add Another Card',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black, fontSize:12)),
            value: 'another_card_yes',
            groupValue: selectedValue,
            onChanged: handleRadioValueChanged,
          ),
          const SizedBox(height:30,),
          MaterialButton(onPressed: (){ },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            height:40,
            minWidth: double.infinity,
            textColor:Colors.white ,
            color:const Color.fromARGB(255,100,100,255),
            child: const Text("Fund Account",style: TextStyle( fontSize:12),),
          )
        ],
      ),
    );
  }
}