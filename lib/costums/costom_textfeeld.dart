import 'package:flutter/material.dart';

class CostomTextfeeld extends StatelessWidget {
  // ignore: non_constant_identifier_names
  CostomTextfeeld(
      {super.key, required this.subject, this.HintTexT, this.prefixIcon,});

  final String subject;
  // ignore: non_constant_identifier_names
  final String? HintTexT;
  Widget? prefixIcon;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(subject),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: HintTexT,
                prefixIcon: prefixIcon,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          )
        ],
      ),
    );
  }
}
