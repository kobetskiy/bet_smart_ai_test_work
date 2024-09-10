import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({
    super.key,
    required this.tabIndex,
    this.onTap,
  });

  final int tabIndex;
  final void Function(int)? onTap;

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.grey[600],
      selectedItemColor: const Color(0xFFFF7950),
      selectedFontSize: 14,
      unselectedFontSize: 14,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.square_rounded),
          label: 'Lines',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.square_rounded),
          label: 'Props',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.square_rounded),
          label: 'SureBet',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.square_rounded),
          label: 'AI',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.square_rounded),
          label: 'EV+',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.square_rounded),
          label: 'Bets',
        ),
      ],
      currentIndex: widget.tabIndex,
      onTap: widget.onTap,
    );
  }
}
