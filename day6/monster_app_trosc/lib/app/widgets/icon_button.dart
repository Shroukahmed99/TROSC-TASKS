import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class iconButton extends StatelessWidget {
  const iconButton ({super.key , required this.image_path});
 final String image_path;

  @override
  Widget build(BuildContext context) {
    return   IconButton(
    onPressed: () {},
  icon: SvgPicture.asset(
  image_path,
  width: 24,
  ),
  );
  }
}
