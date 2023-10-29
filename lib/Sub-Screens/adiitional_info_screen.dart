import 'package:flutter/material.dart';

class AdditionalInfoScreen extends StatefulWidget {
  const AdditionalInfoScreen({super.key});

  @override
  State<AdditionalInfoScreen> createState() => _AdditionalInfoScreenState();
}

class _AdditionalInfoScreenState extends State<AdditionalInfoScreen> {
  bool _lights = false;
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.blue[700],
        title: Text("Additional Information",
        style: TextStyle(
          fontWeight: FontWeight.w400
        ),
        ),
        centerTitle: true,
      ),

      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [

            ListTile(
              leading: Icon(Icons.share_outlined), 
              title: Text("Share Dukaan App", style: TextStyle(fontSize: 18),),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next)),
            ),

            ListTile(
              leading: Icon(Icons.chat_bubble_outline_outlined), 
              title: Text("Change Language", style: TextStyle(fontSize: 18),),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next)),
            ),

            ListTile(
              leading: CircleAvatar(
                radius: 17,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/pngimg.com - whatsapp_PNG1.png",),
              ), 
              title: Text("WhatsApp Chat Support", style: TextStyle(fontSize: 18),),
              trailing: Switch.adaptive(
                value: _lights, 
                onChanged: (bool value){
                  setState(() {
                    _lights = value;
                  });
                }
                ),    
            ),

            ListTile(
              leading: Icon(Icons.lock), 
              title: Text("Privacy Policy", style: TextStyle(fontSize: 18),),
            ),

            ListTile(
              leading: Icon(Icons.star_border_outlined), 
              title: Text("Rate Us", style: TextStyle(fontSize: 18),),
            ),

            ListTile(
              onTap: (){
                Navigator.of(context).pop();
              },
              leading: Icon(Icons.logout_outlined), 
              title: Text("Sign Out", style: TextStyle(fontSize: 18),),
            ),

          ],
        ),
      ) ,
      );
  }
}