import 'package:flutter/material.dart';
import 'pageWizard.dart';
import 'pageLogin.dart';
import 'pageCarousel.dart';
import 'pageSettings.dart';
import 'pageAbout.dart';

class TabApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
              title: Text("Page Framework"),
              bottom: TabBar(tabs: [
                //Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.person)),
                Tab(icon: Icon(Icons.view_carousel)),
                Tab(icon: Icon(Icons.settings)),
                Tab(icon: Icon(Icons.help)),
              ])),
          body: TabBarView(
            children: [
              //PageWizard(),
              PageLogin(),
              PageCarousel(<String>[
                'wizard1.jpg',
                'wizard2.jpg',
                'wizard3.jpg',
              ]),
              PageSettings(
                <Setting>[
                  new Setting("First name", TextField()),
                  new Setting("Second name", TextField()),
                  new Setting("Password", TextField(obscureText: true,)),
                  new Setting(
                      "Language",
                      new SettingDropdown(<String>[
                        'Italiano',
                        'Inglese',
                        'Spagnolo',
                        'Francese'
                      ], hint: 'Select a language')),
                  new Setting(
                      "Need a car",
                      Checkbox(
                        value: true,
                        onChanged: null,
                      )),
                  new Setting(
                      "Age",
                      Slider(
                        min: 10,
                        max: 70,
                        divisions: 7,
                        value: 30,
                        label: "Valore",
                        onChanged: null,
                      )),
                ],
              ),
              PageAbout(
                  title: "Page Framework",
                  description:
                      "Quest'applicazione è bellissima.\nViva il GDG.\nViva Android.\nViva me!"),
            ],
          ),
        ),
      ),
    );
  }
}
