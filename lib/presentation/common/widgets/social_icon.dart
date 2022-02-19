import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    Key? key,
    required this.icon,
    this.onPressed,
  }) : super(key: key);

  final Either<String, Icon> icon;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed as void Function()?,
      borderRadius: BorderRadius.circular(46),
      child: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: 56,
        width: 56,
        decoration: const BoxDecoration(
          // color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: icon.fold((l) => SvgPicture.asset(l), (r) => r),
      ),
    );
  }
}
