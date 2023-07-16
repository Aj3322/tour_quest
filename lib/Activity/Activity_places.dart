import 'package:flutter/material.dart';
import 'package:tour_quest/spalash.dart';
class Activity_place extends StatefulWidget {
  const Activity_place({Key? key});

  @override
  State<Activity_place> createState() => _Activity_placeState();
}

class _Activity_placeState extends State<Activity_place> {
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
                    width: mq.width * 0.285,
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
                    Text("Jaipur",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
                    Text("Places",style: TextStyle(fontSize: 20,color: Colors.blue),),
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
                  child: ListView(
                    children: [
                      Container(
                        height: mq.height * 0.15,
                        width: mq.width * 0.8,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              ClipRRect( borderRadius: BorderRadius.all(Radius.circular(15)),
                                child: Card(elevation: 20,
                                  child: Container(
                                    height: mq.height * 0.16,
                                    width: mq.width * 0.2,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      child: Image.asset("assets/Rectangle 22.png",fit: BoxFit.fill,),
                                    ),
                                  ),
                                ),
                              ),SizedBox(width: 40,),
                             Column(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Text("Patalpani Falls",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blue),),
                                 Text("Location: GQ3X+HF4, Kekariya Dabri, Madhya Pradesh",style: TextStyle(color: Colors.black),),
                                 Text("Timings: 10:00 am to 06:30 pm",style: TextStyle(color: Colors.black),),
                                 Text("⭐⭐⭐⭐⭐",)
                               ],
                             )
                            ],
                          ),
                        )
                      ),
                      Divider(color: Colors.black,thickness: 3,),
                      Container(
                          height: mq.height * 0.15,
                          width: mq.width * 0.8,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                ClipRRect( borderRadius: BorderRadius.all(Radius.circular(15)),
                                  child: Card(elevation: 20,
                                    child: Container(
                                      height: mq.height * 0.16,
                                      width: mq.width * 0.2,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        child: Image.asset("assets/Rectangle 23.png",fit: BoxFit.fill,),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 40,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Patalpani Falls",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blue),),
                                    Text("Patalpani Falls",style: TextStyle(color: Colors.black),),
                                    Text("⭐⭐⭐⭐⭐",)
                                  ],
                                )
                              ],
                            ),
                          )
                      ),
                      Divider(color: Colors.black,thickness: 3),
                      Container(
                          height: mq.height * 0.15,
                          width: mq.width * 0.8,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                ClipRRect( borderRadius: BorderRadius.all(Radius.circular(15)),
                                  child: Card(elevation: 20,
                                    child: Container(
                                      height: mq.height * 0.16,
                                      width: mq.width * 0.2,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        child: Image.asset("assets/Rectangle 24.png",fit: BoxFit.fill,),
                                      ),
                                    ),
                                  ),
                                ),SizedBox(width: 40,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Patalpani Falls",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blue),),
                                    Text("Patalpani Falls",style: TextStyle(color: Colors.black),),
                                    Text("⭐⭐⭐⭐⭐",)
                                  ],
                                )
                              ],
                            ),
                          )
                      ),
                      Divider(color: Colors.black,thickness: 3),
                      Container(
                          height: mq.height * 0.15,
                          width: mq.width * 0.8,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                ClipRRect( borderRadius: BorderRadius.all(Radius.circular(15)),
                                  child: Card(elevation: 20,
                                    child: Container(
                                      height: mq.height * 0.16,
                                      width: mq.width * 0.2,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        child: Image.asset("assets/Rectangle 25.png",fit: BoxFit.fill,),
                                      ),
                                    ),
                                  ),
                                ),SizedBox(width: 40,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Patalpani Falls",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blue),),
                                    Text("Patalpani Falls",style: TextStyle(color: Colors.black),),
                                    Text("⭐⭐⭐⭐⭐",)
                                  ],
                                )
                              ],
                            ),
                          )
                      ),


                      Divider(color: Colors.black,thickness: 3),
                      Container(
                          height: mq.height * 0.15,
                          width: mq.width * 0.8,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                ClipRRect( borderRadius: BorderRadius.all(Radius.circular(15)),
                                  child: Card(elevation: 20,
                                    child: Container(
                                      height: mq.height * 0.16,
                                      width: mq.width * 0.2,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        child: Image.asset("assets/ed60f9aa08ea3b3235b8dd828ad8f755 1.png",fit: BoxFit.fill,),
                                      ),
                                    ),
                                  ),
                                ),SizedBox(width: 40,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Patalpani Falls",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blue),),
                                    Text("Patalpani Falls",style: TextStyle(color: Colors.black),),
                                    Text("⭐⭐⭐⭐⭐",)
                                  ],
                                )
                              ],
                            ),
                          )
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
                                  IconButton(onPressed: (){}, icon: Icon(Icons.people_outline,color: Colors.blue,size: 40,)),
                                SizedBox(height: 5,),
                                Text("  Place")
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(onPressed: (){}, icon: Icon(Icons.map,color: Colors.blue,size: 40)),
                                  SizedBox(height: 5,),
                                  Text("  Map")
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(onPressed: (){}, icon: Icon(Icons.vrpano_outlined,color: Colors.blue,size: 40)),
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
                                                    MaterialPageRoute(builder: (context) => const Spalash()),
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

