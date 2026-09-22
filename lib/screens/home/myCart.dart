import 'package:flutter/material.dart';
import 'package:mehreen_project/utils/widgets/custom_appbar.dart';
import 'package:mehreen_project/utils/widgets/custom_button.dart';

class MycartScreen extends StatefulWidget {
  const MycartScreen({super.key});

  @override
  State<MycartScreen> createState() => _MycartScreenState();
}

class _MycartScreenState extends State<MycartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: CustomAppbar(
            title: "My Cart"),
      ),
      body: Center(
        child: CustomButton(
            btnLabel: "Go to Checkout",
            onPressed: (){}),
      ),
    );
  }
}
