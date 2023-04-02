import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class InputTextFieldWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final String? hintText;

  InputTextFieldWidget(
      {super.key, required this.textEditingController, this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
            alignLabelWithHint: true,
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black)),
            fillColor: Colors.white54,
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey),
            contentPadding: EdgeInsets.only(bottom: 15),
            focusColor: Colors.white60),
      ),
    );
  }
}
