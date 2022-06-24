import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/size_config.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    Key? key,
    required this.formText,
    required this.hinText,
    required this.obsecure,
    required this.keyboardType, required this.controller,
  }) : super(key: key);
  final String formText;
  final String hinText;
  final bool obsecure;
  final TextInputType keyboardType;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            formText,
            style: const TextStyle(color: Colors.black87),
          ),
          SizedBox(
            height: getProportionalHeight(15),
          ),
          TextFormField(
            controller: controller,
            obscureText: obsecure,
            keyboardType: keyboardType,
            style: const TextStyle(color: kTextColor1),
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.never,
              hintText: hinText,
              contentPadding: const EdgeInsets.all(10),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(width: 1, color: kTextColor1),
              ),
              focusedBorder: OutlineInputBorder(
                gapPadding: 5,
                borderSide: const BorderSide(width: 1, color: kTextColor1),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          SizedBox(
            height: getProportionalHeight(10),
          ),
        ],
      ),
    );
  }
}
