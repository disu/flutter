
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
/*import 'package:flutter_html_view/flutter_html_view.dart';

import 'package:html2md/html2md.dart' as html2md;
import 'package:flutter_markdown/flutter_markdown.dart';

final String wikiUrlHtml =
    'https://it.wikipedia.org/w/api.php?action=parse&format=json&prop=text&page=';

class WikipediaApp extends StatefulWidget {
  @override
  PostAppState createState() => PostAppState();
}

class PostAppState extends State<WikipediaApp> {
  Future<WikipediaPage> _page;
  TextEditingController _textEditingController;
  ScrollController _scrollController;
  String searchString;
  String _title = "";

  @override
  void initState() {
    _textEditingController = new TextEditingController();
    _scrollController = new ScrollController(initialScrollOffset: 0.0);
    super.initState();
    //_page = fetchPost("pizza");
    _title = "";
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Wikipedia Search',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Wikipedia Search'),
          ),
          body: Column(
            children: <Widget>[
              AppBar(
                  title: TextField(
                    style: new TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      fillColor: Colors.yellow,
                      hintText: 'Cosa vuoi cercare?',
                    ),
                    textAlign: TextAlign.center,
                    onSubmitted: (url) => submitSearch(url: url),
                    controller: _textEditingController,
                  ),
                  actions: <Widget>[
                    IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {
                          setState(() {
                            _page = fetchPost(_textEditingController.text);
                          });
                        })
                  ]),
              Padding(
                  child: Text(
                    _title,
                    style: TextStyle(
                        fontSize: 22.00,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                  padding: EdgeInsets.all(10)),
              FutureBuilder<WikipediaPage>(
                future: _page,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    //return Text(snapshot.data.text);

                    if (snapshot.data.title != null)
                      _title = snapshot.data.title;

                    if (snapshot.data.text != null) {
                      /*return HtmlView(
                          data: snapshot.data.text,
                          onLaunchFail: (url) => print("launch $url failed"));*/

                      var htmlRendered = html2md.convert(snapshot.data.text);
                      var textSlashCorrected = htmlRendered.replaceAllMapped(new RegExp(r'\(\/\/'), (hasil){
                        return '(https://';
                      });
                      return new MarkdownBody(data: textSlashCorrected);
                    } else
                      return Text("Nessun risultato");
                  } else if (snapshot.hasError) {
                    return Text("${snapshot.error}");
                  }

                  // By default, show a loading spinner
                  return CircularProgressIndicator();
                },
              )
            ],
          ),
        ));
  }

  submitSearch({String url}) {
    print("Ho cercato: " + _textEditingController.text);
    _page = fetchPost(_textEditingController.text);
  }
}

Future<WikipediaPage> fetchPost(String search) async {
  final response = await http.get(wikiUrlHtml + search);

  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON
    return WikipediaPage.fromJson(json.decode(response.body));
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load page');
  }
}

class WikipediaPage {
  final int pageid;
  final String title;
  final String text;

  WikipediaPage({this.pageid, this.title, this.text});

  factory WikipediaPage.fromJson(Map<String, dynamic> json) {
    if (json['parse'] != null)
      return WikipediaPage(
        pageid: json['parse']['pageid'],
        title: json['parse']['title'],
        text: json['parse']['text']['*'],
      );
    else
      return WikipediaPage(
        pageid: 0,
        title: "",
        text: "",
      );
  }
}
*/