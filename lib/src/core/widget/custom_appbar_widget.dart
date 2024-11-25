import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shahid_neshan/src/core/extenstion/navigation_extension.dart';

class CustomAppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget> action;
  final double leadingWidth;
  final Color? backgroundColor;
  final Color? iconColor;
  final Color? titleColor;
  final bool? needNavigationBackIcon;
  final double? fontSize;

  const CustomAppbarWidget({super.key, required this.title, required this.action, required this.leadingWidth, this.backgroundColor, this.iconColor, this.titleColor, this.needNavigationBackIcon, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        backgroundColor: backgroundColor,
        toolbarHeight: 70,
        foregroundColor: Colors.blue,
        surfaceTintColor: Colors.transparent,
        shadowColor: backgroundColor,
        leadingWidth: leadingWidth,
        leading: Row(
          children: [
            const SizedBox(width: 20),
            if (needNavigationBackIcon ?? true) InkWell(onTap: () => context.navigateBack(), child: SvgPicture.asset('assets/icon/arrow-right.svg', color: iconColor)),
            const SizedBox(width: 8),
            Text(title, style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w700, color: titleColor, ))
          ],
        ),
        actions: action,
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 70);
}
