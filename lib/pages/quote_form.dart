import 'package:flutter/material.dart';

class QuoteForm extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.indigo,
        brightness: Brightness.light
      ),
      home: new NewQuoteForm(title: 'New Quote'),
    );
  }
}

class NewQuoteForm extends StatefulWidget {
  NewQuoteForm({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _NewQuoteFormState createState() => new _NewQuoteFormState();
}

class _NewQuoteFormState extends State<NewQuoteForm> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        actions: <Widget>[
          new IconButton(icon: const Icon(Icons.edit), onPressed: () {})
        ],
      ),
      body: new Column(
          children: <Widget>[
          new ListTile(
            leading: const Icon(Icons.person),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Name",
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.phone),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Phone",
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.email),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Email",
              ),
            ),
          ),
          const Divider(
            height: 1.0,
          ),
          new ListTile(
            leading: const Icon(Icons.gps_fixed),
            title: const Text('Pick Up Location'),
            subtitle: const Text('Select Your Pick Up Location'),
          ),
          new ListTile(
            leading: const Icon(Icons.code),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Zip Code",
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.gps_fixed),
            title: const Text('Drop Off Location'),
            subtitle: const Text('Select Your Pick Up Location'),
          ),
          new ListTile(
            leading: const Icon(Icons.code),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Zip Code",
              ),
            ),
          ),
          new ButtonBar(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              new RaisedButton.icon(
                icon: const Icon(Icons.arrow_right),
                label: const Text("Next"),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
