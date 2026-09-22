import 'package:flutter/material.dart';
import 'package:mehreen_project/constants/app_assets.dart';
import 'package:mehreen_project/utils/widgets/custom_button.dart';

import '../../utils/widgets/custom_appbar.dart';

class BeveragesScreen extends StatefulWidget {
  const BeveragesScreen({super.key});

  @override
  State<BeveragesScreen> createState() => _BeveragesScreenState();
}

class _BeveragesScreenState extends State<BeveragesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: CustomAppbar(
            title: "Beverages",
          leading: Icon(Icons.arrow_back_ios_new),
          icon: Image.asset(AppAssets.filterIcon),
        ),
      ),
      body: Center(
        child: CustomButton(
            btnLabel: "Add All To Cart",
            onPressed: (){}),
      ),
    );
  }
}
