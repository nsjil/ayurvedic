import 'package:flutter/material.dart';

class DropDown extends StatelessWidget {
  const DropDown(
      {super.key,
      required this.lists,
      required this.onChanged,
      required this.HinT});
  final List<String> lists;
  final Function(String?)? onChanged;
  final String HinT;

  @override
  Widget build(BuildContext context) {
    String? dropdownvalue;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black)),
        child: DropdownButton(
            underline: Container(
              color: Colors.white,
            ),
            isExpanded: true,
            hint: Text(HinT),
            items: lists
                .map<DropdownMenuItem<String>>((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ))
                .toList(),
            value: dropdownvalue,
            onChanged: onChanged
           
            ),
      ),
    );
  }
}
