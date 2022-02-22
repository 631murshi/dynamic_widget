import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:dynamic_widget/dynamic_widget/basic/dynamic_widget_json_exportor.dart';
import 'package:flutter/material.dart';
import 'package:jsonschema/click_listener.dart';
import 'package:jsonschema/code_editor.dart';

class PreviewPage extends StatelessWidget {
  final String jsonString;

  PreviewPage(this.jsonString);

  late DynamicWidgetJsonExportor? _exportor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<Widget?>(
              future: _buildWidget(context),
              builder: (BuildContext context, AsyncSnapshot<Widget?> snapshot) {
                if (snapshot.hasError) {
                  print(snapshot.error);
                }
                return snapshot.hasData
                    ? _exportor = DynamicWidgetJsonExportor(
                  child: snapshot.data,
                )
                    : Text("Loading...");
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<Widget?> _buildWidget(BuildContext context) async {
    return DynamicWidgetBuilder.build(
        jsonString, context, new DefaultClickListener());
  }
}