import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const CustomFormField({Key? key,  required this.icon, required this.label, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        readOnly: true,
        initialValue: value,
        style: TextStyle(color: Colors.black, fontSize
        : 20, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          icon: Icon(this.icon),
          labelText: this.label          
        ),   
      ),
    );
  }
}