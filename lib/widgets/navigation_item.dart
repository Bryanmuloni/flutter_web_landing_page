import 'package:flutter/material.dart';
import 'package:landing_page/routes/routes.dart';
import 'package:landing_page/widgets/interactive_nav_item.dart';

class NavigationItem extends StatelessWidget {
  final String title;
  final String routeName;
  final bool selected;
  final Function onHighlight;
  final IconData icon;

  const NavigationItem({
    @required this.title,
    @required this.routeName,
    @required this.selected,
    @required this.onHighlight,
    this.icon
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navKey.currentState.pushNamed(routeName);
        onHighlight(routeName);
      },
      child: InteractiveNavItem(
        text: title,
        routeName: routeName,
        selected: selected,
        icon:icon
      ),
    );
  }
}
