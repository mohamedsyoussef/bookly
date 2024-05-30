import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(AssetsData.logo),
        IconButton(
          onPressed: () {},
          icon: const Icon(
           FontAwesomeIcons.magnifyingGlass,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
