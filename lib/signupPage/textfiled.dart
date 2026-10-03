import 'package:flutter/material.dart';
import 'package:project/core/constant/color.dart';

class CustomTextfiledAuth extends StatelessWidget {
  final String labeltext;
  final String hinttext;
  final IconData? iconData;
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;
  final bool isNumber;
  final bool? obscureText;
  final void Function()? onTapIcon;

  const CustomTextfiledAuth({
    Key? key,
    this.obscureText,
    this.onTapIcon,
    required this.labeltext,
    required this.hinttext,
    this.iconData,
    required this.mycontroller,
    required this.valid,
    required this.isNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textDirection: TextDirection.rtl,
      style: const TextStyle(
        color: Color.fromARGB(255, 72, 72, 72),
        height: 3,
        fontSize: 14,
      ),
      keyboardType: isNumber
          ? const TextInputType.numberWithOptions(decimal: true)
          : TextInputType.text,
      validator: valid,
      controller: mycontroller,
      obscureText: obscureText == null || obscureText == false ? false : true,
      decoration: InputDecoration(
        hintText: hinttext,
        hintStyle: const TextStyle(fontSize: 16, color: Colors.grey),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
        label: Container(
          margin: const EdgeInsets.symmetric(horizontal: 9),
          child: Text(labeltext, textDirection: TextDirection.rtl),
        ),
        labelStyle: const TextStyle(color: AppColor.primaryGreen, fontSize: 17),
        suffixIcon: InkWell(
          child: Icon(iconData, color: Colors.grey),
          onTap: onTapIcon,
        ),

        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColor.primaryGreen, width: 2),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.green, width: 2),
        ),
      ),
    );
  }
}
