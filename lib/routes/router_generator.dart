import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:landing_page/public/directory.dart';
import 'package:landing_page/public/home.dart';
import 'package:landing_page/public/lab.dart';
import 'package:landing_page/public/lib.dart';
import 'package:landing_page/public/links.dart';
import 'package:landing_page/routes/routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeHome:
        return MaterialPageRoute(builder: (_) => HomeDashboard());
        break;
      case routeDirectory:
        return MaterialPageRoute(builder: (_) => DirectoryDashboard());
        break;
      case routeLaboratory:
        return MaterialPageRoute(builder: (_) => LaboratoryDashboard());
        break;
      case routeLibrary:
        return MaterialPageRoute(builder: (_) => LibraryDashboard());
        break;
      case routeLinks:
        return MaterialPageRoute(builder: (_) => LinksPage());
        break;
    }
  }
}
