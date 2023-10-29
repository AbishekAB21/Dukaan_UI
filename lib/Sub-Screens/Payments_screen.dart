


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_screen1/Functions/Functions.dart';

List<Widget> orderId = [
  const Text('Order #12345'),
  const Text('Order #12456'),
  const Text('Order #89465'),
  const Text('Order #54678'),
  const Text('Order #45637'),
  const Text('Order #67846'),
  const Text('Order #90876'),
  const Text('Order #87945')
];

List<Widget> orderDate = [
  const Text('Apr 02, 11:59 PM'),
  const Text('Apr 17, 12:59 PM'),
  const Text('Mar 2, 11:59 AM'),
  const Text('Aug 14, 01:59 PM'),
  const Text('Sep 03, 8:59 AM'),
  const Text('Jul  08, 9:59 AM'),
  const Text('Dec  18, 10:15 AM'),
  const Text('Nov  23, 6:19 AM')
];

List<Widget> price = [
  const Text(
    '₹799',
    style: TextStyle(fontSize: 15),
  ),
  const Text(
    '₹799',
    style: TextStyle(fontSize: 15),
  ),
  const Text(
    '₹399',
    style: TextStyle(fontSize: 15),
  ),
  const Text(
    '₹699',
    style: TextStyle(fontSize: 15),
  ),
  const Text(
    '₹449',
    style: TextStyle(fontSize: 15),
  ),
  const Text(
    '₹599',
    style: TextStyle(fontSize: 15),
  ),
  const Text(
    '₹1299',
    style: TextStyle(fontSize: 15),
  ),
  const Text(
    '₹1199',
    style: TextStyle(fontSize: 15),
  )
];

List<String> orderImage = [
  'assets/ManCityBlue.jpeg',
  'assets/City2024.jpeg',
  'assets/Manchester City Home Kit 2022-2023-500x500.jpeg',
  'assets/Mancity2020.jpeg',
  'assets/ManCity2021-jpeg.jpeg',
  'assets/Mug.jpeg',
  'assets/AwayCity.jpeg',
  'assets/Kids.jpg',
];



class PaymentsScreen extends StatefulWidget {
PaymentsScreen({super.key});


  @override
  State<PaymentsScreen> createState() => _PaymentsScreenState();
}

class _PaymentsScreenState extends State<PaymentsScreen> {

List<ListTileOne> ListOne = [
    ListTileOne("Default Method", "Online Payments", IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next_rounded))),
    ListTileOne("Payment Profile", "Bank Account", IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next_rounded))),
  ];

bool _isVisible = true;
int? gValue = 1;
int n = orderId.length;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.blue[700],
        title: Text("Payments",
        style: TextStyle(
          fontWeight: FontWeight.w400
        ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.info_outline_rounded) )
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Transaction Limit", 
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                          ),
                        Text(
                          "A free limit upto which you will recieve the online payments directly in your bank.",
                          style: TextStyle(color: Colors.grey[600]),
                          ),
                        SizedBox(height: 10,),
                        pro(),
                        Text("₹36,668 left of ₹50,000", 
                        style: TextStyle(color: Colors.grey[500]) ,
                        ),
                        //loading thingy goes here
                        SizedBox(height: 10,),
                        ElevatedButton(onPressed: (){}, child: Text(" Increase limit "), 
                        style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.blue[700]))),
                      ],
                    ),
                  ),
                )
              ),
          
              SizedBox(height: 5),
          
              ListTile(
                leading: Text("Default Methods",
                style: TextStyle(fontSize: 17),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Online Payments",
                    style: TextStyle(fontSize: 17, color: Colors.grey[600]),
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next_rounded))
                  ],
                ),
              ),
          
              ListTile(
                leading: Text("Payment Profile",
                style: TextStyle(fontSize: 17),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Bank Account",
                    style: TextStyle(fontSize: 17, color: Colors.grey[600]),
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next_rounded))
                  ],
                ),
              ),
              Divider(thickness: 2,),
          
              ListTile(
                leading: Text("Payments Oveview",
                style: TextStyle(fontSize: 17),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Life Time",
                    style: TextStyle(fontSize: 17, color: Colors.grey[600]),
                    ),
                    IconButton(
                      onPressed: (){
                        setState(() {
                          _isVisible = !_isVisible;
                        });
                      }, 
                      icon: Icon(Icons.navigate_next_rounded))
                  ],
                ),
              ),
          
              Visibility(
                visible: !_isVisible,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.8),
                        color: Colors.orange,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("  AMOUNT ON HOLD  ", style: TextStyle(color: Colors.white,letterSpacing: 1),),
                            Text(" ₹ 0", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600, color: Colors.white),)
                          ],
                        ),
                      ),
                    ),
              
                         Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.8),
                        color: Colors.green[400],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("  AMOUNT RECIEVED  ", style: TextStyle(color: Colors.white,letterSpacing: 1)),
                            Text(" ₹ 13,332", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600, color: Colors.white),)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
             Padding(
               padding: const EdgeInsets.only(left: 12, right: 10, bottom: 7),
               child: Row(
                children: [
                  Text("Transactions",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 10, right: 10),
               child: CupertinoSlidingSegmentedControl(
                    thumbColor: Colors.blue,
                    groupValue: gValue ,
                    children: {
                      0: Text("On hold"),
                      1: Text("Payouts ($n)"),
                      2: Text("Refunds"),
                    }, 
                    onValueChanged: (gValue) {
                     
                     setState(() {
                       this.gValue = gValue;
                     });
                    }
                    ),
             ),

//--------------------------------Order Details--------------------------------
            
            for(int i = 0 ; i<n ; i++)
             ordersInfo(
              order: orderId[i], 
              itemImage: Image.asset(orderImage[i]),
              date: orderDate[i], 
              amount: price[i], 
              context: context)

            ],
          ),
        ),
      ),
    );
  }

//--------------------------------Linear Progress Bar--------------------------------

 Widget pro(){
   return LinearProgressIndicator(
      value: 0.3,
      backgroundColor: Colors.grey[300],
      color: Colors.blue[700],
    );
  }
}

class ListTileOne{
  late String LeadingText;
  late String TrailingText;
  late IconButton IButton;

  ListTileOne(this.LeadingText, this.TrailingText, this.IButton);
}
