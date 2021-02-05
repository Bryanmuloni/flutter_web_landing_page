import 'package:flutter/material.dart';
import 'package:landing_page/routes/routes.dart';
import 'package:landing_page/widgets/navigation_item.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          width: double.infinity,
          height: 60.0,
          color: Theme.of(context).primaryColor,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Image.asset(
                "assets/fao_logo.png",
                height: 40,
                // fit: BoxFit.c,
              ),
            ),
            Row(
              children: [
                Row(
                  children: [
                    Text(
                      "English",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Icon(Icons.translate_rounded, color: Colors.white,
                      size: 20.0,)
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  width: 1.5,
                  color: Colors.white,
                  height: 15.0,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Theme.of(context).primaryColor,
                      child: Icon(
                        Icons.person_pin,
                        color: Colors.white,
                        size: 20.0,
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      "Sirikye Brian",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  width: 1.5,
                  color: Colors.white,
                  height: 15.0,
                ),
                FlatButton(
                  splashColor: Colors.lightBlueAccent,
                  hoverColor: Colors.black26,
                  color: Theme.of(context).primaryColor,
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        "Sign In",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 10.0),
                      Icon(
                        Icons.login,
                        color: Colors.white,
                        size: 20.0,
                      ),
                    ],
                  ),
                )
              ],
            )
          ]),
        ),
        Container(
          height: 40.0,
          color: Theme.of(context).primaryColor,
          child: ListView(
            scrollDirection: Axis.horizontal,
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            // mainAxisSize: MainAxisSize.max,
            children: [
              NavigationItem(
                icon: Icons.home_rounded,
                selected: index == 0,
                title: 'Home',
                routeName: routeHome,
                onHighlight: onHighlight,
              ),
              NavigationItem(
                icon: Icons.person_pin_rounded,
                selected: index == 1,
                title: 'Directories',
                routeName: routeDirectory,
                onHighlight: onHighlight,
              ),
              NavigationItem(
                icon: Icons.store_rounded,
                selected: index == 2,
                title: 'Laboratories',
                routeName: routeLaboratory,
                onHighlight: onHighlight,
              ),
              NavigationItem(
                icon: Icons.library_books,
                selected: index == 3,
                title: 'Library',
                routeName: routeLibrary,
                onHighlight: onHighlight,
              ),
              NavigationItem(
                icon: Icons.link,
                selected: index == 4,
                title: 'Links',
                routeName: routeLinks,
                onHighlight: onHighlight,
              ),
            ],
          ),
        ),
      ],
    );
  }

  void onHighlight(String route) {
    switch (route) {
      case routeHome:
        changeHighlight(0);
        break;
      case routeDirectory:
        changeHighlight(1);
        break;
      case routeLaboratory:
        changeHighlight(2);
        break;
      case routeLibrary:
        changeHighlight(3);
        break;
      case routeLinks:
        changeHighlight(4);
        break;
    }
  }

  void changeHighlight(int newIndex) {
    setState(() {
      index = newIndex;
    });
  }
}
