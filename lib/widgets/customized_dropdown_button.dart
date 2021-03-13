import 'package:flutter/material.dart';

class CustomizedDropDownButton extends StatefulWidget {
  String defaultValueSelected;
  final List<String> dropdownItems;
  CustomizedDropDownButton(this.dropdownItems) {
    this.defaultValueSelected = this.dropdownItems[0];
  }

  @override
  _CustomizedDropDownButtonState createState() =>
      _CustomizedDropDownButtonState();
}

class _CustomizedDropDownButtonState extends State<CustomizedDropDownButton> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
        value: widget.defaultValueSelected,
        onChanged: (String value) {
          print(value);
          setState(() {
            widget.defaultValueSelected = value;
          });
        },
        items:
            widget.dropdownItems.map<DropdownMenuItem<String>>((String item) {
          return DropdownMenuItem<String>(value: item, child: Text(item));
        }).toList());
  }
}
