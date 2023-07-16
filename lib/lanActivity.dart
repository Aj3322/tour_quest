import 'package:flutter/material.dart';
import 'package:tour_quest/Activity/Activity_chat.dart';
import 'package:tour_quest/Auth/Login.dart';
import 'Utils/textfield.dart';
import 'app.dart';

class LanActivity extends StatefulWidget {
  const LanActivity({Key? key}) : super(key: key);

  @override
  State<LanActivity> createState() => _LanActivityState();
}

class _LanActivityState extends State<LanActivity> {
  late String selectedLanguage = 'English';

  List<String> languageOptions = [
    'English',
    'Spanish',
    'French',
    'German',
    'Italian',
    'Japanese',
    'Chinese',
  ];


  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
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
                  padding: const EdgeInsets.only(top: 30, left: 30),
                  child: IconButton(
                    onPressed: () => {},
                    icon: Icon(Icons.backspace_outlined),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: mq.width * 0.05),
                height: MediaQuery.of(context).size.height * 0.4,
                child: Image.asset("assets/15330886_1905.i305.png"),
              ),
            ),
            const Center(
              child: Text(
                "Select Your Language",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(21, 45, 81, 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: DropdownButton<String>(
                  value: selectedLanguage,
                  hint: Text('Select a language'),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedLanguage = newValue!;
                    });
                  },
                  items: languageOptions.map((String language) {
                    return DropdownMenuItem<String>(
                      value: language,
                      child: Text(language),
                    );
                  }).toList(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 20),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Chat()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                    child: Text(
                      "Continue",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
