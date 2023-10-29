import 'package:flutter/material.dart';

class CatalogueScreen extends StatefulWidget {
CatalogueScreen({super.key});

  @override
  State<CatalogueScreen> createState() => _CatalogueScreenState();
}

class _CatalogueScreenState extends State<CatalogueScreen> {
  final List<CardDetails> Pics = [
     CardDetails("assets/ManCityBlue.jpeg", "Couch Potato | Women", "1 piece", "₹799"),
     CardDetails("assets/City2024.jpeg", "Couch Potato | Men", "1 piece", "₹799"),
     CardDetails("assets/Mug.jpeg", "Mug | Explore", "1 Piece", "₹399"),
     CardDetails("assets/Manchester City Home Kit 2022-2023-500x500.jpeg", "Combo Blahst 1 | Pack of 2", "1 piece", "₹699"),
     CardDetails("assets/Mug.jpeg", "Mug |  Orchard", "1 piece", "₹449"),
     CardDetails("assets/Mancity2020.jpeg", "Combo Blahst 2 | Pack of 2", "1 piece", "₹599"),
     CardDetails("assets/AwayCity.jpeg", "I See Combo Pack", "1 piece", "1,299"),
     CardDetails("assets/Kids.jpg", "Kids Combo Blahst", "1 piece", "1,199"),
  ];
  bool _lights = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          title: Text("Catalogue"),
          centerTitle: true,
          backgroundColor: Colors.blue[700],
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search))
          ],
    
          bottom: TabBar(tabs: [
            Tab(
              child: Text("Products",
              style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Tab(
              child: Text("Categories",
              style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ]),
        ),

        body: 
        TabBarView(
          children: [
            SafeArea(
            child: ListView.builder(
              itemCount: Pics.length,
              itemBuilder: (ctx,index){
                return Container(
                  //height: 205,
                  child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.zero,
                              child: Image.asset(Pics[index].Pic),
                            ),
                            title: Text(Pics[index].TitleText,
                            style: TextStyle(fontSize: 20),
                            ),
                    
                            subtitle: Row(
                              children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(Pics[index].SubText1,
                                      style:TextStyle(color: Colors.black) ,
                                      ),
                                      SizedBox(height: 5,),
                                      Text(Pics[index].Subtext2,
                                      style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(height: 10,),
                                      Text("In Stock", style: TextStyle(color: Colors.green),),
                                    ],
                                  ),
                              ],
                            ),
                            trailing: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.more_vert),
                                //Toggle button
                                Switch.adaptive(
                                  value: _lights, 
                                  onChanged: (bool value){
                                    setState(() {
                                      _lights = value;
                                    });
                                  }
                                  )
                              ],
                            ),
                          ),
                          Divider(thickness: 2,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextButton.icon(
                                onPressed: (){}, 
                                icon: Icon(Icons.share_outlined , color: Colors.black,), 
                                label: Text("Share Product",
                                style: TextStyle(fontSize: 20, color: Colors.black),
                                ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }
              
              )
            )
          ]
          
          ),
      ),
    );
  }
}

class CardDetails{
  late String Pic;
  late String TitleText;
  late String SubText1;
  late String Subtext2;
  CardDetails(this.Pic, this.TitleText, this.SubText1, this.Subtext2);
}