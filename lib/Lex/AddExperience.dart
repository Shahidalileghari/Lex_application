import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddExperienceScreen extends StatefulWidget {
  const AddExperienceScreen({super.key});

  @override
  State<AddExperienceScreen> createState() => _AddExperienceScreenState();
}

class _AddExperienceScreenState extends State<AddExperienceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Experience Screen"),
      ),

    );
  }
}
