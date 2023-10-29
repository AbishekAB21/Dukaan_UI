import 'package:flutter/material.dart';
import 'package:ui_screen1/Sub-Screens/Catalogue.dart';
import 'package:ui_screen1/Sub-Screens/Dukaan_Premium.dart';
import 'package:ui_screen1/Sub-Screens/Manage_Storage.dart';
import 'package:ui_screen1/Sub-Screens/Order_screen.dart';
import 'package:ui_screen1/Sub-Screens/Payments_screen.dart';
import 'package:ui_screen1/Sub-Screens/adiitional_info_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.blue[700],
        title: Text("Home Screen",
        style: TextStyle(
          fontWeight: FontWeight.w400
        ),
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: ListView(
          children: [

            ElevatedButton.icon(
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx)=> AdditionalInfoScreen()));
              }, 
              icon: Icon(Icons.info_outline), 
              label: Text("Additional Information")
              ),

              SizedBox(height: 10,),

              ElevatedButton.icon(
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx)=> MAnageStorage()));
              }, 
              icon: Icon(Icons.storage_outlined), 
              label: Text("Manage Storage")
              ),

              SizedBox(height: 10,),

              ElevatedButton.icon(
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx)=> PaymentsScreen()));
              }, 
              icon: Icon(Icons.payments), 
              label: Text("Payments")
              ),

              SizedBox(height: 10,),

              ElevatedButton.icon(
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx)=> PremiumScreen()));
              }, 
              icon: Icon(Icons.shopping_bag), 
              label: Text("Dukaan Premium")
              ),

              SizedBox(height: 10,),

              ElevatedButton.icon(
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx)=> OrderScreen()));
              }, 
              icon: Icon(Icons.list_alt_outlined), 
              label: Text("Order Screen")
              ),

              SizedBox(height: 10,),

              ElevatedButton.icon(
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx)=> CatalogueScreen()));
              }, 
              icon: Icon(Icons.list_rounded), 
              label: Text("Catalogue Screen")
              ),
          ]
          ),
      ),
    );
  }
}