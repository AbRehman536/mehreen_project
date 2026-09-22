import 'package:flutter/material.dart';
import 'package:mehreen_project/constants/app_colors.dart';

class CustomAppbar extends StatelessWidget {
  final String title;
  final Widget? leading;
  final Widget? icon;
  const CustomAppbar({
    super.key, required this.title, this.leading, this.icon});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      title: Text(title,style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w800,
        color: AppColors.darkColor
      ),),
      centerTitle: true,
      actions: [
        ?icon
      ],
    );
  }
}
