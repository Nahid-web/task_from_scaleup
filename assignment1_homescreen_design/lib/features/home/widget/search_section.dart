import 'package:assignment1_homescreen_design/common/utils.dart';
import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                labelText: "  Search",
                labelStyle: TextStyle(
                  color: Colors.grey,
                ),
                suffixIcon: Icon(
                  Icons.search,
                  size: 30,
                ),
                suffixIconColor: Colors.white10,
                contentPadding: EdgeInsets.only(left: 30),
                border: borderLine(
                  color: Colors.white54,
                ),
                enabledBorder: borderLine(
                  color: Colors.white54,
                ),
                focusedBorder: borderLine(
                  color: Colors.blue,
                ),
                errorBorder: borderLine(
                  color: Colors.red,
                )),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            Icons.tune_outlined,
            color: Colors.white,
            size: 30,
          ),
        ),
      ],
    );
  }
}
