import 'package:flutter/material.dart';
import 'package:landing_page/widgets/navigation_bar.dart';

class AppView extends StatefulWidget {
  final Widget child;

  const AppView({@required this.child});

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Column(
        children: [NavigationBar(), Expanded(child: widget.child)],
      ),
    );
  }
}
