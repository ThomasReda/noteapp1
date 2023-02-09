import 'package:flutter/material.dart';

class CustTextFormSign extends StatelessWidget {
  final String label;
  final TextEditingController mycontroller;
  const CustTextFormSign({Key? key, required this.label, required this.mycontroller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
    controller: mycontroller,
        decoration:  InputDecoration(
          contentPadding:  const EdgeInsets.symmetric(vertical:8,horizontal:15 ),
          labelText: label,
          border: const OutlineInputBorder(
    
            borderSide: BorderSide(color: Colors.black, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(15))
          )
        ),
      ),
    );
  }
}