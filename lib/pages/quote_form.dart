import 'package:flutter/material.dart';

class QuoteForm extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Hot Reload App in IntelliJ). Notice that the counter
        // didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.indigo,
      ),
      home: new NewQuoteForm(title: 'New Quote'),
    );
  }
}

class NewQuoteForm extends StatefulWidget {
  NewQuoteForm({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _NewQuoteFormState createState() => new _NewQuoteFormState();
}

class _NewQuoteFormState extends State<NewQuoteForm> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
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
            leading: const Icon(Icons.group),
            title: const Text('Contact group'),
            subtitle: const Text('Not specified'),
          )
        ],
      ),
    );
  }
}
