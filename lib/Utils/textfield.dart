import 'package:flutter/material.dart';
class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hinText;
  final TextInputType textInputType;
  final bool isPass;
  final IconData icon;

  const TextFieldInput({Key? key,
    required this.textInputType,
    required this.hinText ,
    required this.textEditingController ,
    required this.icon,
    this.isPass=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: TextField(
            style: const TextStyle(color: Colors.black),
            controller: textEditingController,
            decoration: InputDecoration(
              hintText: hinText,
              fillColor: Colors.white54,
              border: UnderlineInputBorder(
                borderSide: const BorderSide(width: 3,
                  color: Color(0xFFC9C9C9),
                ),
              ),
              focusedBorder:UnderlineInputBorder(
                borderSide: const BorderSide(width: 3,
                  color: Color(0xFFC9C9C9),
                ),
              ),
              enabledBorder:UnderlineInputBorder(
                borderSide: const BorderSide(width: 3,
                  color: Color(0xFFC9C9C9),
                ),
              ),
              filled: true,
              contentPadding: const EdgeInsets.all(8),
            ),
            keyboardType: textInputType,
            obscureText: isPass,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Align( alignment: Alignment.centerLeft,child: Icon(icon,color: Colors.black,size: 30,)),
        ),
      ],
    );
  }
}