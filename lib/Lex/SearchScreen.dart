
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:  TextFormField(
          decoration:  InputDecoration(
            hintText: "search",
            border: OutlineInputBorder(

              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(20),

            ),
          ),
        ),
      ),

    );
  }
}
