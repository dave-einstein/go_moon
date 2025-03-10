import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomDropdownButton extends StatelessWidget {
  List<String> item;
  double width;

  CustomDropdownButton({required this.item, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(53, 53, 53, 1.0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        underline: Container(),
        value: item.first,
        items:
            item.map((e) {
              return DropdownMenuItem(value: e, child: Text(e));
            }).toList(),
        onChanged: (_) {},
        dropdownColor: Color.fromRGBO(53, 53, 53, 1.0),
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
