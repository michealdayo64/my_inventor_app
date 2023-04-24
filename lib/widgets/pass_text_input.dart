import 'package:flutter/material.dart';

bool showPassInput = true;

class PassTextInput extends StatefulWidget {
  const PassTextInput({
    Key? key,
  }) : super(key: key);

  @override
  State<PassTextInput> createState() => _PassTextInputState();
}

class _PassTextInputState extends State<PassTextInput> {
  void passShowBtn() {
    setState(() {
      showPassInput = !showPassInput;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextField(
        obscureText: showPassInput,
        decoration: InputDecoration(
          hintStyle: const TextStyle(fontSize: 17),
          hintText: 'Password',
          suffixIcon: IconButton(
              onPressed: passShowBtn,
              icon: showPassInput
                  ? const Icon(
                      Icons.remove_red_eye_sharp,
                    )
                  : const Icon(
                      Icons.remove_red_eye_sharp,
                      color: Colors.red,
                    )),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
        ),
      ),
    );
  }
}
