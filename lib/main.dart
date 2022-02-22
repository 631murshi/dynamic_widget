import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:jsonschema/code_editor.dart';
import 'package:jsonschema/json_exporter.dart';
import 'package:jsonschema/widget_json.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dynamic Widget',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Dynamic Widget Demo'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(""),
        ),
        body: CustomScrollView(slivers: [
          SliverPadding(
            padding: EdgeInsets.all(20),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
              ),
              delegate: SliverChildListDelegate([
                ElevatedButton(
                  child: Text("ListView"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                             builder: (context) =>
                                CodeEditorPage(listview)));
                  },
                ),
              ]),
            ),
          ),
        ]));
  }
}

