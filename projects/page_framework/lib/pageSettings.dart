import 'package:flutter/material.dart';
import 'pageFramework.dart';

class PageSettings extends StatefulWidget with PageFramework {
  String _title = 'Settings';
  List<Setting> _settings;

  @override
  get title => this._title;

  PageSettings(List<Setting> settings, {Key key}) : super(key: key) {
    this._settings = settings;
  }

  @override
  PageSettingsState createState() => PageSettingsState();
}

class PageSettingsState extends State<PageSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Align(
          alignment: Alignment.bottomCenter,
          child: Opacity(
            opacity: 0.15,
            child: Icon(
              Icons.settings,
              size: 200.00,
              color: Colors.blueGrey,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
          child: Column(
            children: (() {
              List<Widget> list = new List<Widget>();

              if (widget._settings == null || widget._settings.length == 0)
                list.add(Text("No Settings"));
              else {
                widget._settings.forEach((setting) {
                  //list.add(Text(setting._name));
                  //list.add(setting._widget);
                  list.add(new SettingRow(setting));
                });
              }
              return list;
            }()),
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Save',
        child: Icon(Icons.save),
      ),
    );
    ;
  }
}

class SettingRow extends StatelessWidget {
  Setting _setting;

  SettingRow(this._setting);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        new Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(this._setting._name),
          ),
          flex: 1,
        ),
        // https://stackoverflow.com/questions/45986093/textfield-inside-of-row-causes-layout-exception-unable-to-calculate-size
        new Expanded(
          child: this._setting._widget,
          flex: 2,
        )
      ],
    );
  }
}

class SettingDropdown extends StatefulWidget {
  List<String> _values;
  String hint = '';

  SettingDropdown(this._values, {this.hint, Key key}) : super(key: key);

  @override
  SettingDropdownState createState() => SettingDropdownState();
}

class SettingDropdownState extends State<SettingDropdown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: widget._values.map((String value) {
        return new DropdownMenuItem<String>(
          value: value,
          child: new Text(value),
        );
      }).toList(),
      hint: Text(widget.hint),
      onChanged: (newVal) {
        //_selectedLocation = newVal;
        this.setState(() {});
      },
    );
  }
}

class Setting {
  String _name;
  Widget _widget;
  String label;

  Setting(this._name, this._widget, {this.label});
}
