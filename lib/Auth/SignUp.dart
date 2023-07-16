import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tour_quest/Auth/Login.dart';
import 'package:tour_quest/lanActivity.dart';
import 'package:tour_quest/spalash.dart';
import '../Utils/textfield.dart';
import 'AuthMethod.dart';
class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  final TextEditingController _email = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _num = TextEditingController();
  Uint8List? _image;
  bool isLoading = false;


  void signupUser () async {
    setState(() {
      isLoading=true;
    });
    String res = await AuthMethods().signUpUser(
      email: _email.text,
      password: _pass.text,
      name: _name.text,
      num: _num.text,
    );
    if(res=='success'){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LogIn()));
    }
    setState(() {
      isLoading=false;
    });
  }
  void navigateToLogin() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LanActivity()));
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _email.dispose();
    _pass.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    Size mq= MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child: Image.asset("assets/Rectangle9.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30,left: 30),
                    child: IconButton(onPressed: ()=>{}, icon: Icon(Icons.backspace_outlined)),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding:EdgeInsets.symmetric(horizontal: mq.width*0.05 ).copyWith(top: 0),
                  height: MediaQuery.of(context).size.height*0.4,
                  child: Image.asset("assets/27953263_tourism_expert_3 1.png"),
                ),
              ),
              Padding(
                padding:EdgeInsets.symmetric(horizontal: mq.width*0.1 ),
                child: Text("Sign Up",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color: Color.fromRGBO(21,45,81,1)),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 20).copyWith(bottom: 0),
                child: TextFieldInput(textInputType: TextInputType.text, hinText: "Full Name", textEditingController: _name, icon: Icons.person),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 20),
                child: TextFieldInput(textInputType: TextInputType.emailAddress, hinText: "Email ID", textEditingController: _email, icon: Icons.email_outlined),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 20).copyWith(top: 0),
                child: TextFieldInput(textInputType: TextInputType.visiblePassword, hinText: "Password",isPass: true, textEditingController: _pass, icon: Icons.lock_outline),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 20).copyWith(top: 0),
                child: TextFieldInput(textInputType: TextInputType.number, hinText: "Mobile No", textEditingController: _num, icon: Icons.call),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,left: 20,bottom: 20),
                child: Center(child: ElevatedButton(onPressed: signupUser, child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 15),

                  child:  isLoading? const Center(child: CircularProgressIndicator(color: Colors.white,),) :Text("Continue",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ))),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Jion Us Before ?"),
                    InkWell(
                        onTap: navigateToLogin,
                      child: Text("Log In",style: TextStyle(color: Colors.blue),))
                  ],
                ),
              )
              ]
        ),
      ),
    );
  }
}
