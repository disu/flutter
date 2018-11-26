import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';
import 'pageFramework.dart';

// Use mixin for multiple inheritance
class PageAbout extends StatelessWidget with PageFramework {
  String _title = 'About';
  String _description = '';
  IconData _icon = Icons.help;

  @override
  get title => this._title;

  PageAbout({title, description}) {
    if (title != null) this._title = title;
    if (description != null) this._description = description;
  }

  @override
  Widget build(BuildContext context) {
    String version = '0.1.3';

    PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
      String appName = packageInfo.appName;
      String packageName = packageInfo.packageName;
      version = packageInfo.version;
      String buildNumber = packageInfo.buildNumber;
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: this.title,
      home: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(children: <Widget>[
          Positioned.fill(
            child: Opacity(
              opacity: 0.15,
              child: Icon(
                Icons.help_outline,
                size: 200.00,
                color: Colors.blue,
              ),
            ),
          ),
          Positioned.fill(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, left: 8, right: 8, bottom: 12),
                  child: Text(
                    this.title,
                    style: TextStyle(
                      color: Colors.blueAccent,
                      decoration: TextDecoration.none,
                      fontSize: 32,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, left: 8, right: 8, bottom: 20),
                  child: Text(
                    "Version: $version",
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.none,
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    this._description,
                    style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
