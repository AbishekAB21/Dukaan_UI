

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({super.key});

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {

 bool _isVisible1 = true;
 bool _isVisible2 = true;
 bool _isVisible3 = true;
 bool _isVisible4 = true;
 bool _isVisible5 = true;
 bool _isVisible6 = true;

 final VideoURL = "https://www.youtube.com/watch?v=4gv9flGe5mw";
 late YoutubePlayerController _youtubeController;
 @override
  void initState() {
    final videoId = YoutubePlayer.convertUrlToId(VideoURL);
    _youtubeController = YoutubePlayerController(
        initialVideoId: videoId!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
      ));    
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.blue[700],
        title: Text("Dukaan Premium"),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            child:Icon(Icons.shopping_bag, color: Colors.white,),
                          ),
                          Text(" dukaan", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("PREMIUM", style: TextStyle(fontSize: 15, fontWeight:FontWeight.w600,color: Colors.blue[700]),)
                        ],
                      ),
                      Text("Get Dukaan Premium for just",style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
                      Text("₹4,999/year",style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
                      Text("All the advanced features for scalling your",style: TextStyle(color: Colors.grey[400]),),
                      Text("buisness",style: TextStyle(color: Colors.grey[400]),)
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(children: [ 
                Text("Features",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),) 
              ],
              ),
            ),
      
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.language_rounded),),
              title: Text("Custom domain name", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
              subtitle: Text("Get your own custom domain name and build your brand on the internet"),
            ),
      
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.verified_rounded),),
              title: Text("Verified seller badge", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
              subtitle: Text("Get green verfied seller badge under your store name and built trust"),
            ),
      
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.laptop),),
              title: Text("Dukaan for PC", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
              subtitle: Text("Access all exclusive premium features on Dukaan for PC"),
            ),
      
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.headset_mic_rounded),),
              title: Text("Priority support", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
              subtitle: Text("Get your questions resolved with our priority customer support"),
            ),
      
            Divider(thickness: 2,),
      
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(children: [ 
                Text("What is Dukaan Premium ?",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),) 
              ],
              ),
            ),
             
              YoutubePlayer(
                width: 400,
                controller: _youtubeController,
                showVideoProgressIndicator: true,
              ),
              

             Divider(thickness: 2,),
             
             
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(children: [ 
                Text("Frequently asked questions",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),) 
              ],
              ),
            ),

            ListTile(
              title: Text("What type of buisnesses can use Dukaan premium ?",
              style: TextStyle(fontSize: 14),
              ),
              trailing: IconButton(
                onPressed: (){
                  setState(() {
                    _isVisible1 = !_isVisible1;
                  });
                }, 
                icon: Icon(Icons.add)
                ),
                subtitle: Visibility(
                  visible: !_isVisible1,
                  child: Text("Dukaan caters to a wide vareity of sellers. Be it a small grocery store or a big legacy brand-anyone who want to sell their products/services online- Dukaan is the perfect platform for you.")
                  ),
            ),
            
            ListTile(
              title: Text("What is your refund policy ?",
              style: TextStyle(fontSize: 14),
              ),
              trailing: IconButton(
                onPressed: (){
                  setState(() {
                    _isVisible2 = !_isVisible2;
                  });
                }, 
                icon: Icon(Icons.add)
                ),
                subtitle: Visibility(
                  visible: !_isVisible2,
                  child: Text("Dukaan caters to a wide vareity of sellers. Be it a small grocery store or a big legacy brand-anyone who want to sell their products/services online- Dukaan is the perfect platform for you.")
                  ),
            ),

            ListTile(
              title: Text("Will there be an automatic charge after the paid trial ?",
              style: TextStyle(fontSize: 14),
              ),
              trailing: IconButton(
                onPressed: (){
                  setState(() {
                    _isVisible3 = !_isVisible3;
                  });
                }, 
                icon: Icon(Icons.add)
                ),
                subtitle: Visibility(
                  visible: !_isVisible3,
                  child: Text("Dukaan caters to a wide vareity of sellers. Be it a small grocery store or a big legacy brand-anyone who want to sell their products/services online- Dukaan is the perfect platform for you.")
                  ),
            ),

            ListTile(
              title: Text("What payment methods do you offer ?",
              style: TextStyle(fontSize: 14),
              ),
              trailing: IconButton(
                onPressed: (){
                  setState(() {
                    _isVisible4 = !_isVisible4;
                  });
                }, 
                icon: Icon(Icons.add)
                ),
                subtitle: Visibility(
                  visible: !_isVisible4,
                  child: Text("Dukaan caters to a wide vareity of sellers. Be it a small grocery store or a big legacy brand-anyone who want to sell their products/services online- Dukaan is the perfect platform for you.")
                  ),
            ),


            ListTile(
              title: Text("What happens when my free trial ends ?",
              style: TextStyle(fontSize: 14),
              ),
              trailing: IconButton(
                onPressed: (){
                  setState(() {
                    _isVisible5 = !_isVisible5;
                  });
                }, 
                icon: Icon(Icons.add)
                ),
                subtitle: Visibility(
                  visible: !_isVisible5,
                  child: Text("Dukaan caters to a wide vareity of sellers. Be it a small grocery store or a big legacy brand-anyone who want to sell their products/services online- Dukaan is the perfect platform for you.")
                  ),
            ),

            ListTile(
              title: Text("What are the terms for the custom domain?",
              style: TextStyle(fontSize: 14),
              ),
              trailing: IconButton(
                onPressed: (){
                  setState(() {
                    _isVisible6 = !_isVisible6;
                  });
                }, 
                icon: Icon(Icons.add),
                ),
                subtitle: Visibility(
                  visible: !_isVisible6,
                  child: Text("Dukaan caters to a wide vareity of sellers. Be it a small grocery store or a big legacy brand-anyone who want to sell their products/services online- Dukaan is the perfect platform for you.")
                  ),
            ),
             
            Divider(thickness: 2,),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(children: [ 
                Text("Need help ? Get in touch",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),) 
              ],
              ),
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 178,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.8),
                  color: Colors.grey[200]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.chat_bubble_outline_outlined, size: 40,)),
                        Text("Live Chat")
                      ],
                    ),
                  ),
                ),

                Container(
                  width: 178,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.8),
                  color: Colors.grey[200]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.call_outlined, size: 40,)),
                        Text("Phone Call")
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Divider(thickness: 2,),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: (){}, child: Text("Select Domain")),
                ElevatedButton(
                  onPressed: (){}, 
                  child: Text("Get Premium"), 
                  )
              ],
            )

          ],
        ),
      ),
      );
  }
}