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

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
