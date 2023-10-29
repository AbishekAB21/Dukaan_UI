import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        title: Text("Order #1688068"),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: ListView(
          children: [
            ListTile(
              leading: Text("May 31, 05:42PM", style: TextStyle(fontSize: 20),),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(radius: 10,),
                  Text("  Delivered", style: TextStyle(fontSize: 15),),
                ],
              ),
            ),
            Divider(thickness: 2,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("1 ITEM", 
                style: TextStyle(
                  fontSize: 15, 
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w400),
                  ),

                TextButton.icon(
                  onPressed: (){}, 
                  icon: Icon(Icons.receipt_outlined), 
                  label: Text("RECEIPT"))  
              ],
            ),

            ListTile(
              leading: 
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: CircleAvatar(
                  backgroundImage:AssetImage('assets/ManCityBlue.jpeg'),
                ),
              ),
              title: Text("  Explore | Men | Navy Blue ",style: TextStyle(fontSize: 20),),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("  1 piece"),
                  Text("   Size: XL"),
                  Row(
                    children: [
                      TextButton(onPressed: (){}, child: Text("1"), 
                      style: ButtonStyle(side: MaterialStateProperty.all(
                        BorderSide(
                          color: Colors.blue,
                          width: 0.8
                        ),
                      ),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10)),
                      minimumSize: MaterialStateProperty.all(Size(0, 0)),
                      ),
                      ),
                      Text("x ₹799"),
                    ],
                  )
                ],
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("₹799"),
                ],
              ) ,
            ),
            Divider(thickness: 2,),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Item Total", style: TextStyle(fontSize: 20),),
                Text("₹799", style: TextStyle(fontSize: 20),)
              ],
            ),
            SizedBox(height: 7,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Delivery",style: TextStyle(fontSize: 20),),
                Text("FREE",style: TextStyle(fontSize: 20, color: Colors.green),)
              ],
            ),
            SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Grand Total",style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
                Text("₹799",style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
              ],
            ),
            SizedBox(height: 10,),
            Divider(thickness: 2,),
            SizedBox(height: 5,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("CUSTOMER DETALIS",style: TextStyle(color: Colors.grey[500], fontSize: 15, fontWeight: FontWeight.w500),),
                TextButton.icon(onPressed: (){}, icon: Icon(Icons.share_outlined), label: Text("SHARE"))
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Deepa", style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
                    Text("+91-7829000484",style: TextStyle(color: Colors.grey[500], fontSize: 15, fontWeight: FontWeight.w500),)
                  ],
                ),
                CircleAvatar(
                  backgroundColor: Colors.blue[700],
                  radius: 17, 
                  child: CircleAvatar( 
                  backgroundColor: Colors.white,
                  radius: 15, 
                  child: Icon(Icons.phone),),),  
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Address", style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
                    Text("D 1101 Chartered Beverly", style: TextStyle(fontSize: 20,letterSpacing: 1),),
                    Text("Hills ,Subramanyapura P.O", style: TextStyle(fontSize: 20, letterSpacing: 1),),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("City", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
                    Text("Bangalore",style: TextStyle(fontSize: 22),)
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Pincode", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
                    Text("560061",style: TextStyle(fontSize: 22),)
                  ],
                ),
                Column(
                  children: [
                    Text(""),
                    Text("")
                  ],
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Payment",style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
                    Text("Online",style: TextStyle(fontSize: 22),)
                  ],
                ),
                TextButton(onPressed: null, 
                child: Text("PAID",style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold,letterSpacing: 1,fontSize: 15),),
                style: ButtonStyle(side: MaterialStateProperty.all(
                        BorderSide(
                          color: Colors.green,
                          width: 0.8
                        ),
                      ),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.only(top: 5, bottom: 5, left: 12, right: 12)),
                      minimumSize: MaterialStateProperty.all(Size(0, 0)),
                      backgroundColor: MaterialStateProperty.all(Colors.green[100])
                      ),      
                )
              ],
            ),
            SizedBox(height: 10,),
            Divider(thickness: 2,),
            SizedBox(height: 10,),

            Row(
              children: [
                Text("ADDITIONAL INFORMATION",style: TextStyle(color: Colors.grey[600]),),
              ],
            ),
            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
             children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("State", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
                  Text("Karnataka", style: TextStyle(fontSize: 22),)
                ],
              )
             ],
            ),
           SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
             children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Email", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
                  Text("greeniceaqua@gmail.com", style: TextStyle(fontSize: 22),)
                ],
              )
             ],
            ),
            SizedBox(height: 20,),
            TextButton(
              onPressed: (){}, 
              child: Text("Share receipt",style: TextStyle(fontSize: 20),),
              style: ButtonStyle(side: MaterialStateProperty.all(
                        BorderSide(
                          color: Colors.blue,
                          width: 0.8
                        ),
                      ),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.only(top: 8, bottom: 8, left: 12, right: 12)),
                      minimumSize: MaterialStateProperty.all(Size(0, 0)),
                      ),
              ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}