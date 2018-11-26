import 'package:flutter/material.dart';

class PageLogin extends StatefulWidget {
  @override
  PageLoginState createState() => PageLoginState();
}

class PageLoginState extends State<PageLogin> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Stack(
      children: <Widget>[
        Positioned(
          left: 0,
          right: 0,
          top: 50,
          child: Opacity(
            opacity: 0.15,
            child: Icon(
              Icons.person,
              size: 200.00,
              color: Colors.black,
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 50,
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: new InputDecoration(
                        labelText: 'E-mail Address',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      obscureText: true,
                      decoration: new InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                    ),
                  ),
                  new Container(
                    width: screenSize.width,
                    child: new RaisedButton(
                      child: new Text(
                        'Login',
                        style: new TextStyle(color: Colors.white),
                      ),
                      onPressed: () => null,
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32))),
                    ),
                    margin: new EdgeInsets.only(top: 20.0),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
