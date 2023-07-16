import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tour_quest/Activity/Activity_chat.dart';
import 'package:tour_quest/Auth/SignUp.dart';
import 'package:tour_quest/Utils/textfield.dart';

import 'AuthMethod.dart';
class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
final TextEditingController _email = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  bool isLoading = false;

  void loginUser() async {
    setState(() {
      isLoading=true;
    });
    String res = await AuthMethods().loginUser(
      email: _email.text,
      password: _pass.text,
    );

    if(res=='Success'){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Chat()));
    }

    debugPrintThrottled(res);
    setState(() {
      isLoading=false;
    });
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
                padding:EdgeInsets.symmetric(horizontal: mq.width*0.05 ),
                height: MediaQuery.of(context).size.height*0.3,
                child: Image.asset("assets/26477376_guide_5.png"),
              ),
            ),
            Padding(
              padding:EdgeInsets.symmetric(horizontal: mq.width*0.1 ),
              child: Text("Login",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color: Color.fromRGBO(21,45,81,1)),),
            ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 20),
             child: TextFieldInput(textInputType: TextInputType.emailAddress, hinText: "Email ID", textEditingController: _email, icon: Icons.email_outlined),
           ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 20).copyWith(top: 0),
              child: TextFieldInput(textInputType: TextInputType.visiblePassword, hinText: "Password", textEditingController: _pass, icon: Icons.lock_outline),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 43),
              child: Align(alignment: Alignment.centerRight, child: Text("Forgot Password ?",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 20),
              child: Center(child: ElevatedButton(onPressed: ()=>{Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Signup()))}, child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 20),
                child: Text("Log In",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ))),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                    ),
                    onPressed: () {
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Image(
                            image: AssetImage("assets/WhatsApp Image 2023-07-15 at 13.23.11.jpg"),
                            height: 20.0,
                            width: 24,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 24, right: 8),
                            child: Text(
                              'Sign in with Google',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black54,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),


                ),
              ),
            ),]
        ),
      ),
    );
  }
}
