import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
    required this.title,
    this.leading,
    this.actions, this.centerTitle,
  });

  final Widget title;
  final Widget? leading;
  final List<Widget>? actions;
  final bool? centerTitle;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      floating: true,
      centerTitle: centerTitle,
      titleTextStyle: Theme.of(context).textTheme.titleLarge,
      title: title,
      leading: leading,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
