import 'package:flutter/material.dart';
import 'package:tour_quest/Auth/SignUp.dart';
import 'package:tour_quest/lanActivity.dart';

class Spalash extends StatefulWidget {
  const Spalash({Key? key}) : super(key: key);

  @override
  State<Spalash> createState() => _SpalashState();
}

class _SpalashState extends State<Spalash> {
  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: mq.height * 0.5,
          width: mq.width,
          color: Colors.indigo,
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: mq.height * 0.5,
            width: mq.width,
            color: Colors.black,
          ),
        ),
        Positioned(
          top: 80,
          left: 30,
          child: RichText(
            text: TextSpan(
              text: "Explore",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          top: 150,
          left: 30,
          child: RichText(
            text: TextSpan(
              text: "Discover favorite tourism",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
        ),
        Positioned(
          top: 180,
          left: 30,
          child: RichText(
            text: TextSpan(
              text: "spots",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
        ),
        Positioned(
          bottom: 55,
          right: 30,
          child: CircleAvatar(
            radius: 130,
            backgroundImage: AssetImage('assets/ed60f9aa08ea3b3235b8dd828ad8f755 1.png'),
          ),
        ),
        Positioned(
          top: 220,
          left: -25,
          child: CircleAvatar(
            radius: 155,
            backgroundImage: AssetImage('assets/inagbe1 1.png'),
          ),
        ),
        Positioned(
          right: -15,
          top: 305,
          child: CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('assets/6566348_fbimg1516215367040_jpegd3e38d7c77ee4ae41c93db89272d97fd 1.png'),
          ),
        ),
        Positioned(
          bottom: 50,
          left: 80,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Container(
              height: 50,
              width: 200,
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
        ),
        Positioned(
          bottom: 50,
          left: 260,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Container(
              height: 50,
              width: 50,
              color: Colors.blue,
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => const Signup()),
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
    );
  }
}
