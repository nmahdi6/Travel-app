import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/Model/TravelModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage  extends StatefulWidget {
  const MainPage ({ Key? key }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _selectedIndex = 0;
  double imageSize = 55;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

   
    return Scaffold(
      // safeArea 
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: double.infinity,
              height: size.height/1.9,
              
              child: Stack(
                children: [
                  // background image
                  Container(
                    width: double.infinity,
                    height: size.height/2.3,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(70),
                        bottomRight: Radius.circular(70),
                        ),
                      image: DecorationImage(
                        image: AssetImage(travelList[_selectedIndex].image),
                        fit: BoxFit.cover,
                        )
                    ),
                  ),
        
                  // head icons
                  Positioned(
                    top: 0,
                    right: 0,
                    left: 0,
                    child: Padding(
                    padding: const EdgeInsets.fromLTRB(10,20,10,0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(color: Color.fromARGB(100, 255, 255, 255),shape: BoxShape.circle),
                          child: const Icon(CupertinoIcons.arrow_left),
                        ), 
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(color: Color.fromARGB(100, 255, 255, 255),shape: BoxShape.circle),
                          child: const Icon(CupertinoIcons.heart),
                        ),
                      ],
                    ),
                              ),
                  ),
                  
                  //image list
                  Positioned(
                    right: 0,
                    top: 106,
                    child: Container(
                      height: size.height/3,
                      width: imageSize*2,
                      child: SizedBox(
                        child: ListView.builder(
                          itemCount: travelList.length,
                          itemBuilder:(context, index) {
                            return imageItem(index);
                        },),
                      ),
                    ),
                  ),
        
                  //name & place
                  Positioned(
                    top: size.height/2.9,
                    left: size.width/10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(travelList[_selectedIndex].name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                        const SizedBox(height: 8,),
                        Row(
                          children: [
                            const Icon(CupertinoIcons.placemark_fill,color: Colors.white,),
                            Text(travelList[_selectedIndex].location,style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 16)),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
                ),
              
            ),
            Container(
              width: double.infinity,
        
              child: Column(
                children: [
                  //3 of box
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: const BorderSide(color: Color.fromARGB(40, 0, 0, 0)) 
                          ),
                          child: Container(
                            width: 90,
                            height: 90,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text("Distance",style: TextStyle(fontWeight: FontWeight.bold),),
                                Text(travelList[_selectedIndex].distance + " Km "),
                              ],
                            ),
                          ),
                      ),
                      Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: const BorderSide(color: Color.fromARGB(40, 0, 0, 0)) 
                          ),
                          child: Container(
                            width: 90,
                            height: 90,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text("Temp",style: TextStyle(fontWeight: FontWeight.bold),),
                                Text(travelList[_selectedIndex].temp + " \u00B0C "),
                              ],
                            ),
                          ),
                      ),
                      Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: const BorderSide(color: Color.fromARGB(40, 0, 0, 0)) 
                          ),
                          child: Container(
                            width: 90,
                            height: 90,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text("Rating",style: TextStyle(fontWeight: FontWeight.bold),),
                                Text(travelList[_selectedIndex].rating),
                              ],
                            ),
                          ),
                      ),
                      
                    ],
                  ),
                  //description
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24 , 16 , 24 , 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      const Text("Description",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      const SizedBox(height: 8,),
                      ExpandableText(
                        travelList[_selectedIndex].discription,
                        expandText: "Read more",
                        maxLines: 3,
                        collapseText: "Collapse",
                      ),
                  //sizedbox
                  SizedBox(height: 16,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                      const Text("Total Price",style: TextStyle(fontWeight: FontWeight.normal),),
                      Text(travelList[_selectedIndex].price + "\$", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),)
                    ],),

                    Container(
                          width: 96,
                          height: 96,
                          decoration: const BoxDecoration(color: Color.fromARGB(250, 0, 0, 0),shape: BoxShape.circle),
                          child: const Icon(CupertinoIcons.arrow_right, color: Colors.white,),
                        ),
                  ],)


                    ],),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget imageItem(int index) {
    return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap:() {
                            setState(() {
                            _selectedIndex = index;
                            }); 
                          },
                          
                          child: AnimatedContainer(
                            decoration: BoxDecoration(
                              border: Border.all(color: _selectedIndex==index? Colors.yellow : Colors.white ,width: 2.2),
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(image: AssetImage(travelList[index].image),
                              fit: BoxFit.fill)
                            ),
                            width: _selectedIndex==index? imageSize + 15 : imageSize,
                            height: _selectedIndex==index? imageSize + 15 : imageSize,
                            
                            
                            duration: const Duration(milliseconds: 500),
                            ),
                          ),
                        ),
                    ],
                  );
  }
} 



