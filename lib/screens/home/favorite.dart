import 'package:flutter/material.dart';
import 'package:mehreen_project/utils/widgets/custom_button.dart';

import '../../utils/widgets/custom_appbar.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: CustomAppbar(
            title: "Favorite"),
      ),
      body: Center(
        child: CustomButton(
            btnLabel: "Add All To Cart",
            onPressed: (){}),
      ),
    );
  }
}
