import 'package:dynamic_widget/dynamic_widget/basic/dynamic_widget_json_exportor.dart';
import 'package:flutter/material.dart';
import 'package:jsonschema/code_editor.dart';

class JSONExporter extends StatefulWidget {
  @override
  _JSONExporterState createState() => _JSONExporterState();
}

class _JSONExporterState extends State<JSONExporter> {
  GlobalKey key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("export example"),
      ),
      body: Builder(
        builder: (context) => Container(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: DynamicWidgetJsonExportor(
                  key: key,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Image.asset("assets/vip.png"),
                      Positioned(
                        child: Image.asset("assets/vip.png"),
                        top: 50,
                        left: 50,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: ElevatedButton(
                  child: Text("Export"),
                  onPressed: () {
                    var exportor =
                    key.currentWidget as DynamicWidgetJsonExportor;
                    var exportJsonString = exportor.exportJsonString();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content:
                        Text("json string was exported to editor page.")));
                    Future.delayed(Duration(seconds: 1), () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  CodeEditorPage(exportJsonString)));
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
