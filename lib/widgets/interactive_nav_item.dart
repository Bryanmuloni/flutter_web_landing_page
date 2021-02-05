import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:landing_page/constants/styles.dart';
import 'package:universal_html/html.dart' as html;

class InteractiveNavItem extends MouseRegion {
  static final appContainer =
      html.window.document.querySelectorAll('flt-glass-pane')[0];

  InteractiveNavItem(
      {Widget child, String text, String routeName, bool selected,IconData icon})
      : super(
          onHover: (PointerHoverEvent evt) {
            appContainer.style.cursor = 'pointer';
          },
          onExit: (PointerExitEvent evt) {
            appContainer.style.cursor = 'default';
          },
          child: InteractiveText(
            text: text,
            routeName: routeName,
            selected: selected,
            icon: icon,
          ),
        );
}

class InteractiveText extends StatefulWidget {
  final String text;
  final String routeName;
  final bool selected;
  final IconData icon;

  const InteractiveText({
    @required this.text,
    this.routeName,
    this.selected,
    @required this.icon,
  });

  @override
  InteractiveTextState createState() => InteractiveTextState();
}

class InteractiveTextState extends State<InteractiveText> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (_) => _hovered(true),
      onExit: (_) => _hovered(false),
      child: Container(
        width: 200,
        height: 40,
        padding: const EdgeInsets.all(10),
        decoration:_hovering? BoxDecoration(color: Colors.black26,borderRadius: BorderRadius
            .all(Radius
          .circular(2.0))):(widget.selected)?BoxDecoration(color: Colors.transparent,border: Border(bottom:
        BorderSide(color: Colors.white,width: 2.0)))
            :BoxDecoration(color: Colors.transparent,borderRadius: BorderRadius
            .all(Radius
            .circular(2.0))),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Icon(widget.icon,color: Colors.white,),
              SizedBox(width: 10.0,),
              Text(widget.text,
                  style: _hovering
                      ? kPageTitleStyle.copyWith(
                          color: Colors.white,fontSize: 15.0)
                      : (widget.selected)
                          ? kPageTitleStyle.copyWith(color: Colors.black,fontSize: 15.0)
                          : kPageTitleStyle),
            ],
          ),
        ),
      ),
    );
  }

  _hovered(bool hovered) {
    setState(() {
      _hovering = hovered;
    });
  }
}
