
import 'package:flutter/material.dart';
import 'Fund_Wallet.dart';
class WalletCard extends StatefulWidget {
  @override
  State<WalletCard> createState() => _WalletCardState();
}

class _WalletCardState extends State<WalletCard> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top:20.0),
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Set the radius value
          ),
                elevation: 0,
                color: const Color.fromARGB(255,240 ,240 ,255),
                child: Container(
                padding: const EdgeInsets.all(10),
                child:  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Avaliable Balance',
                      style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 12
                      ),
                    ),
                        const Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Text("NGN 0.00",
                            style: TextStyle(
                                fontSize: 12
                          ),
                     ),
                  ),
                          MaterialButton(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            color: Color.fromARGB(255,100,100,255),
                           onPressed: () {
                             Navigator.of(context).push(
                               MaterialPageRoute(
                                 builder: (BuildContext context) {
                                   return FundPage();
                                 },
                               ),
                             );
                           },
                           child: const Text("Fund Wallet",
                             style: TextStyle(
                               letterSpacing:2,
                               color: Colors.white,
                               fontSize: 12
                             ),
                           ),
                          ),
                  ],
                ),
              )
      ),
    );
  }
}
