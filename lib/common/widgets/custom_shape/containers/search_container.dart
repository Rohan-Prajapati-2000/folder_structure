import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class SSearchContainer extends StatelessWidget {
  const SSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.padding = const EdgeInsets.symmetric(horizontal: SSizes.defaultSpace)
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Padding(
      padding: padding,
      child: Container(
        width: SDeviceUtility.getScreenWidth(),
        padding: const EdgeInsets.all(SSizes.md),
        decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? SColors.dark
                    : SColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(SSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: SColors.grey) : null),
        child: Row(children: [
          Icon(icon, color: SColors.darkGrey),
          const SizedBox(width: SSizes.spaceBtwItems),
          Text(text, style: Theme.of(context).textTheme.bodySmall),
        ]),
      ),
    );
  }
}
