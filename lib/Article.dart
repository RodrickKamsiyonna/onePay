import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ArticlePage extends StatelessWidget {

  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0xFFFF0000),
      ),
    );
    return Scaffold(
           drawer: IconButton(onPressed: (){}, icon: Icon(Icons.dehaze_rounded),),
          appBar: AppBar(
               centerTitle: true,
               title: Text("Article",style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white),),
               backgroundColor:  Color(0xffFF0000),),
          body: Padding(
               padding: EdgeInsets.all(20),
               child: ListView(
                   children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Politics",style:Theme.of(context).textTheme.bodySmall?.copyWith(color:  Color(0xffFF0000),),),
                          Row(
                            children: [
                              const Icon(Icons.comment, size: 20,),
                              SizedBox(width:10,),
                              Text("32 Comments",style:Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey),),
                            ],
                          )
                        ],
                      ),

                     SizedBox(height: 20,),
                     Text("BREAKING: Edo Deputy Governor Shaibu locked out of Govt House",style:Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.black, fontWeight: FontWeight.w800),),
                     SizedBox(height:10,),
                      Row(
                       children: [
                         Text("20 August 2023",style:Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey),),
                         SizedBox(width: 5,),
                         Text("|",style:Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.red, fontWeight: FontWeight.w900),),
                         SizedBox(width: 5,),
                         Text("8:30PM",style:Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey),),
                       ],
                     ),
                      SizedBox(height: 10,),
                      Stack(
                       clipBehavior: Clip.none ,
                       fit:StackFit.loose,
                       alignment: AlignmentDirectional.bottomEnd,
                       children: [
                         Image.network(fit: BoxFit.cover, width: double.infinity,"https://sunnewsonline.com/ezoimgfmt/assets.sunnewsonline.com/wp-content/uploads/2023/09/Shaibu.png?ezimgfmt=ng:webp/ngcb1",height:MediaQuery.of(context).size.height*0.3,),
                         Positioned(
                           top: MediaQuery.of(context).size.height*0.26,
                           child: Row( children: [
                             Card(
                                  elevation: 10,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:BorderRadius.circular(30)
                                  ),
                                 child: IconButton(onPressed:  (){}, iconSize: 20,  icon:Icon(Iconsax.star ,))),
                             SizedBox(width:10,),
                             Card(
                                 elevation: 10,
                                 shape: RoundedRectangleBorder(
                                   borderRadius:BorderRadius.circular(30)
                                 ),
                                 child: IconButton(onPressed:  (){}, iconSize: 20,  icon:Icon(Iconsax.share ,)))
                           ],),
                         )
                       ],
                     ),
                     SizedBox(height: 20,),
                     Row(
                       children: [
                         Text("|",style:Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.red, fontWeight: FontWeight.w900),),
                         SizedBox(width: 5,),
                         Text("Korede Gold",style:Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey),),
                       ],
                     ),
                     SizedBox(height: 20,),
                     Text("A breaking news from the Deputy Governor’s media office to Daily Sun Monday morning ",style: Theme.of(context).textTheme.bodySmall?.copyWith(color:Colors.black,fontWeight: FontWeight.w700),),
                     Text("A breaking news from the Deputy Governor’s media office to Daily Sun Monday morning indicated that Rt. Hon. Philip Shaibu got the shock of the moment when he got to his office Monday and found that the gate to the office of the deputy governor and the main entrance leading to the storey building was locked with chains and heavy padlocks.\n\n Shaibu in the company of his aides, after making frantic calls trying to reach the governor but to no avail, waited for over an hour, before deciding to leave.\n\n A staff of the government house who made the pictures available to our reporter but begged not to be mentioned disclosed that Shaibu had some discussions with the state commissioner of police and the Director of State Security Services, DSS alerting them of how he was locked out from his office.\n\n Shaibu in the company of his aides, after making frantic calls trying to reach the governor but to no avail, waited for over an hour, before deciding to leave.\n"
                         , style: Theme.of(context).textTheme.bodySmall?.copyWith(color:Colors.black))
                   ],
               ),
          ),
    );
  }
}
