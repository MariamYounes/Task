import 'package:flutter/material.dart';

TextFormField textField(String hintText, Function callback,
    {bool isPassword = false,
    bool isDense = true,
    Function showPassword,
    bool isPhoneKeyboard = false,
    bool isClicable,
    TextEditingController controller}) {
  return TextFormField(
    decoration: InputDecoration(
      hintText: hintText,
      suffixIcon: isPassword
          ? IconButton(
              icon: Icon(Icons.remove_red_eye), onPressed: showPassword)
          : null,
      hintStyle: TextStyle(color: Colors.black , fontSize: 16 ,),
    ),
    enabled: isClicable,
    style: TextStyle(color: Colors.black , fontSize: 16 ,),
    controller: controller,
    autofocus: false,
    
    textInputAction: TextInputAction.done,
    keyboardType: isPhoneKeyboard ? TextInputType.phone : TextInputType.text,
    obscureText: isPassword ? isDense : false,
    onSaved: (value) {
      callback(value);
    },
    validator: (String arg) {
      if (arg.length < 3)
        return 'Please Enter Your $hintText';
      else
        return null;
    },
  );
}
