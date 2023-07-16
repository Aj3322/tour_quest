import 'package:flutter/material.dart';
import 'package:tour_quest/Activity/Activity_famouse.dart';
import 'package:tour_quest/Activity/Activity_virtual.dart';
import 'package:tour_quest/app.dart';

import '../spalash.dart';
class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    height: mq.height * 0.2,

                    child: Image.asset("assets/Rectangle9.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 30),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.backspace_outlined),
                    ),
                  ),
                ],
              ),
              Center(
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Community",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),)
                    ,Text("Chat",style: TextStyle(color: Colors.blue),),
                  ],
                ),
              ),
              SizedBox(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search, color: Colors.blue),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                height: mq.height * 0.8,
                child: Padding(
                  padding: const EdgeInsets.only(left: 40,right: 40,bottom: 50),
                  child:
                  ListView(
                    children: [
                      Text("Active chat",style: TextStyle(fontSize: 25,color: Colors.blue),),
                      Divider(),
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        child: Container(
                            height: mq.height * 0.12,
                            width: mq.width * 0.8,
                            color: Colors.lightBlue,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  CircleAvatar(radius: 32,
                                      backgroundImage: AssetImage("assets/ed60f9aa08ea3b3235b8dd828ad8f755 1.png")),
                                  SizedBox(width: 20,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Shahil",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                                      Text("How Was this",style: TextStyle(color: Colors.black),),
                                    ],
                                  )
                                ],
                              ),
                            )
                        ),
                      ),

                      SizedBox(height: 10,),
                      Text("End Chat",style: TextStyle(fontSize: 25,color: Colors.blue),),
                      Divider(),
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        child: Container(
                            height: mq.height * 0.12,
                            width: mq.width * 0.8,
                            color: Colors.lightBlue,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  CircleAvatar(radius: 32,
                                      backgroundImage: AssetImage("assets/ed60f9aa08ea3b3235b8dd828ad8f755 1.png")),
                                  SizedBox(width: 20,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Shahil",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                                      Text("How Was this",style: TextStyle(color: Colors.black),),
                                    ],
                                  )
                                ],
                              ),
                            )
                        ),
                      ),


                      SizedBox(height: 20,),
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        child: Container(
                            height: mq.height * 0.12,
                            width: mq.width * 0.8,
                            color: Colors.lightBlue,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  CircleAvatar(radius: 32,
                                      backgroundImage: AssetImage("assets/ed60f9aa08ea3b3235b8dd828ad8f755 1.png")),
                                  SizedBox(width: 20,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Shahil",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                                      Text("How Was this",style: TextStyle(color: Colors.black),),
                                    ],
                                  )
                                ],
                              ),
                            )
                        ),
                      ),


                      SizedBox(height: 20,),
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        child: Container(
                            height: mq.height * 0.12,
                            width: mq.width * 0.8,
                            color: Colors.lightBlue,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  CircleAvatar(radius: 32,
                                      backgroundImage: AssetImage("assets/ed60f9aa08ea3b3235b8dd828ad8f755 1.png")),
                                  SizedBox(width: 20,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Shahil",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                                      Text("How Was this",style: TextStyle(color: Colors.black),),
                                    ],
                                  )
                                ],
                              ),
                            )
                        ),
                      ),




                      SizedBox(height: 20,),
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        child: Container(
                            height: mq.height * 0.12,
                            width: mq.width * 0.8,
                            color: Colors.lightBlue,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  CircleAvatar(radius: 32,
                                      backgroundImage: AssetImage("assets/ed60f9aa08ea3b3235b8dd828ad8f755 1.png")),
                                  SizedBox(width: 20,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Shahil",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                                      Text("How Was this",style: TextStyle(color: Colors.black),),
                                    ],
                                  )
                                ],
                              ),
                            )
                        ),
                      ),



                      SizedBox(height: 20,),
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        child: Container(
                            height: mq.height * 0.12,
                            width: mq.width * 0.8,
                            color: Colors.lightBlue,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  CircleAvatar(radius: 32,
                                      backgroundImage: AssetImage("assets/ed60f9aa08ea3b3235b8dd828ad8f755 1.png")),
                                  SizedBox(width: 20,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Shahil",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                                      Text("How Was this",style: TextStyle(color: Colors.black),),
                                    ],
                                  )
                                ],
                              ),
                            )
                        ),
                      ),
                    ],
                  ),
                ),
              ),


              Positioned(bottom: 0,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                  child: Card(
                    elevation: 10,
                    child: Container(
                      height: mq.height*0.25,
                      width: mq.width,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0).copyWith(left: 15),
                            child: Text("Activities",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black)),
                          ),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  IconButton(onPressed: (){ Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Chat()));}, icon: Icon(Icons.people_outline,color: Colors.blue,size: 40,)),
                                  SizedBox(height: 5,),
                                  Text("  Place")
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(onPressed: (){ Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> NearbyLocationMap()));}, icon: Icon(Icons.map,color: Colors.blue,size: 40)),
                                  SizedBox(height: 5,),
                                  Text("  Map")
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(onPressed: (){ Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Activity_virtul()));}, icon: Icon(Icons.vrpano_outlined,color: Colors.blue,size: 40)),
                                  SizedBox(height: 5,),
                                  const Text("  Virtual Tour")
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.black,
                                radius:28,
                              ),
                              Card(
                                shadowColor: Colors.blue,
                                child: Container(
                                  height: 40,
                                  width: 235,
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                                        child: Container(
                                          height: 40,
                                          width: 250,
                                          color: Colors.white,
                                          child: Center(
                                            child: RichText(
                                              text: TextSpan(
                                                text: "Discover",
                                                style: TextStyle(color: Colors.black, fontSize: 20),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        right: 0,
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.all(Radius.circular(7)),
                                          child: Container(
                                            height: 40,
                                            width: 50,
                                            color: Colors.blue,
                                            child: Center(
                                              child: GestureDetector(
                                                onTap: () {
                                                  Navigator.of(context).pushReplacement(
                                                    MaterialPageRoute(builder: (context) => const Fam()),
                                                  );
                                                },
                                                child: RichText(
                                                  text: TextSpan(
                                                    text: ">>",
                                                    style: TextStyle(color: Colors.white, fontSize: 20),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
