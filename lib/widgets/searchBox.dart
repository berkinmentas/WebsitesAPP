import 'package:flutter/material.dart';
import '../data.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        cursorColor: Colors.black87,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.black87)),
              hintText: 'Aramak istediğinizi yazınız...',
              prefixIcon: Icon(Icons.search, color: Colors.black87),
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.black87))
          )),
    );
  }
}
