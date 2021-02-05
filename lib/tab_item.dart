import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final String label;
  final IconData icon;
  final String route;

  const TabItem({Key key, @required this.icon, @required this.label, @required this.route})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.blue,
      hoverColor: Colors.blueGrey,
      onTap: () {
        print("Tapped!");
        // Navigator.pushNamed(context, widget.route);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Row(
          children: [
            Icon(icon,color: Colors.white,),
            SizedBox(
              width: 10,
            ),
            Text(label,
              style: TextStyle(fontSize: 14.0,color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
