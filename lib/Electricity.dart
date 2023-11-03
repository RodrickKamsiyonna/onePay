import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:google_fonts/google_fonts.dart';

class ELectricity extends StatefulWidget {
  const ELectricity({super.key});

  @override
  State<ELectricity> createState() => _ELectricityState();
}

class _ELectricityState extends State<ELectricity> {

  String selectedValue = 'prepaid';

  void handleRadioValueChanged(String? value) {
    setState(() {
      selectedValue = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                IconButton(onPressed: () {} , icon: const Icon(Icons.arrow_back_ios)),
              ],
            ),
            Align(
                alignment: Alignment.center,
                child: Text("Electricity", style: GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize:23 ))),],
        ),
      ),),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  Container(
                    padding: const EdgeInsets.only(left:20,right:40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255,240 ,240 ,255),
                    ),
                    child:
                      Row(
                        children: [
                          Radio<String>(
                          activeColor: Colors.black,
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          value: 'prepaid',
                          groupValue: selectedValue,
                          onChanged: handleRadioValueChanged),
                          SizedBox(width: 10,),
                          const Text('Prepaid',style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black, fontSize:12)),
                        ],
                      ),
                  ),

                Container(
                  padding: const EdgeInsets.only(left:20,right:40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255,240 ,240 ,255),
                  ),
                  child:
                  Row(
                    children: [
                      Radio<String>(
                          activeColor: Colors.black,
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          value: 'prepaid_no',
                          groupValue: selectedValue,
                          onChanged: handleRadioValueChanged),
                      SizedBox(width: 10,),
                      const Text('Postpaid',style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black, fontSize:12)),
                    ],
                  ),
                )
              ],
            ),


            Padding(
              padding: const EdgeInsets.only(top:30.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Set the radius value
                ),
                elevation: 0,
                color: const Color.fromARGB(255,240 ,240 ,255),
                child: Container(
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
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Set the radius value
                ),
                elevation: 0,
                color: const Color.fromARGB(255,240 ,240 ,255),
                child: Container(
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
                            hintText: 'Meter Number', // Set the hint text
                            border: InputBorder.none, // Remove the border
                          ),
                          keyboardType: TextInputType.number,
                          maxLines:1,

                        ),
                      ),
                    ],
                  ),
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
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Set the radius value
                ),
                elevation: 0,
                color: const Color.fromARGB(255,240 ,240 ,255),
                child: Container(
                  padding:EdgeInsets.only(left:13,right: 13),
                  width:double.infinity,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height:50,),
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


     ] )
      ,);
  }
}
