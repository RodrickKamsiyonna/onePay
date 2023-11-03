import 'package:flutter/material.dart';
import 'TransactionModel.dart';
class RecentTs extends StatefulWidget {
  const RecentTs({super.key});

  @override
  State<RecentTs> createState() => _RecentTsState();
}

class _RecentTsState extends State<RecentTs> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:16.0),
      child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
           Text('Recent Transactions',
             textAlign:TextAlign.start,
             style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 12),),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('All',
                        textAlign:TextAlign.start,
                        style: TextStyle(
                            fontSize: 13),),
                      Container(
                           width: 50,
                           child: Divider(
                             thickness: 3,
                             color:Color.fromARGB(255,100,100,255),
                           ))
                    ],
                  ),
                  Column(
                    children: [
                      Text('Credit',
                        textAlign:TextAlign.start,
                        style: TextStyle(
                            fontSize: 13),),
                      Container(
                          width: 50,
                          child: Divider(
                            thickness: 3,
                          ))
                    ],
                  ),
                  Column(
                    children: [
                      Text('Debit',
                        textAlign:TextAlign.start,
                        style: TextStyle(
                            fontSize: 13),),
                      Container(
                          width: 50,
                          child: Divider(
                            thickness: 3,
                          ))
                    ],
                  )
                ],
              ),
            ),
           AllTransactions(),
         ],
      ),
    );
  }
}
class AllTransactions extends StatefulWidget {
  const AllTransactions({super.key});
  @override
  State<AllTransactions> createState() => _AllTransactionsState();
}

class _AllTransactionsState extends State<AllTransactions> {
  List<Transaction> list = [Transaction(type:'Withdrawal', date:'july 30 2023', amount:'N23,000', subamount:'N34,000,000', image:''),
                            Transaction(type:'Deposit', date:'july 30 2023', amount:'N23,000', subamount:'N34,000,000', image:''),
                            Transaction(type:'Deposit', date:'july 30 2023', amount:'N23,000', subamount:'N34,000,000', image:''),
                            Transaction(type:'Deposit', date:'july 30 2023', amount:'N23,000', subamount:'N34,000,000', image:''),
                            Transaction(type:'Deposit', date:'july 30 2023', amount:'N23,000', subamount:'N34,000,000', image:'')];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
          padding: EdgeInsets.only(top :10),
          itemCount: list.length ,
          itemBuilder: (BuildContext context, int index) {
            Transaction transaction = list[index];
            return CardForTransactions(transaction: transaction);
          },

        ),
    );
  }
}

class CardForTransactions extends StatelessWidget {
  Transaction  transaction;
 CardForTransactions({super.key, required this.transaction});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:12.0),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Set the radius value
        ),
        color: const Color.fromARGB(255,240 ,240 ,255),
         child: Container(
           padding: const EdgeInsets.all(10),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [Padding(
                   padding: const EdgeInsets.only(right:8.0),
                   child: ClipOval(
                     child:Container(
                         decoration: const BoxDecoration(
                           color: Colors.white
                         ),
                        height: 30,
                        width: 30,
                     ) ,
                   ),
                 ),
               Column(
                 crossAxisAlignment:CrossAxisAlignment.start,
                 children: [
                   Text( '${transaction.type}',
                     textAlign:TextAlign.start,
                     style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 12),),
                   SizedBox(height:2,),
                   Text( '${transaction.date}',
                     textAlign:TextAlign.start,
                     style: TextStyle(
                         fontSize: 10),),],),]
               ),
               Column(
                 crossAxisAlignment:CrossAxisAlignment.end,
                 children: [
                   Text( '${transaction.amount}',
                     textAlign:TextAlign.start,
                     style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 12),),
                   SizedBox(height:2,),
                   Text( '${transaction.subamount}',
                     textAlign:TextAlign.start,
                     style: TextStyle(
                         fontSize: 10),),],)
             ],
           ),
         ),
      ),
    );
  }
}

