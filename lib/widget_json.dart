var listview = '''
{
  "type": "Scaffold",
  "body": {
    "type": "ListView",
  "padding": "10, 10, 10, 10",
  "children":[
    {
    "type":"Card",
    "color":"fff44336",
    "shadowColor":"ff2196f3",
    "elevation":10.0,
    "borderOnForeground":true,
    "margin":"10.0,10.0,10.0,10.0,",
    "semanticContainer":true,
    "child":{
        "type":"Container",
        "alignment":null,
        "padding":null,
        "color":null,
        "margin":null,
        "constraints":{
            "maxWidth":500.0,
            "maxHeight":100.0
        },
        "child":null
    },
    "shape":{
        "side":{
            "color":"ff2196f3",
            "width":2.0,
            "style":1
        },
        "borderRadius":"10.0:10.0,10.0:10.0,10.0:10.0,10.0:10.0"
    }
},
{
    "type":"Card",
    "color":"fff44336",
    "shadowColor":"ff2196f3",
    "elevation":10.0,
    "borderOnForeground":true,
    "margin":"10.0,10.0,10.0,10.0,",
    "semanticContainer":true,
    "child":{
        "type":"Container",
        "alignment":null,
        "padding":null,
        "color":null,
        "margin":null,
        "constraints":{
            "maxWidth":500.0,
            "maxHeight":100.0
        },
        "child":null
    },
    "shape":{
        "side":{
            "color":"ff2196f3",
            "width":2.0,
            "style":1
        },
        "borderRadius":"10.0:10.0,10.0:10.0,10.0:10.0,10.0:10.0"
    }
},
{
    "type":"Card",
    "color":"fff44336",
    "shadowColor":"ff2196f3",
    "elevation":10.0,
    "borderOnForeground":true,
    "margin":"10.0,10.0,10.0,10.0,",
    "semanticContainer":true,
    "child":{
        "type":"Container",
        "alignment":null,
        "padding":null,
        "color":null,
        "margin":null,
        "constraints":{
            "maxWidth":500.0,
            "maxHeight":100.0
        },
        "child":null
    },
    "shape":{
        "side":{
            "color":"ff2196f3",
            "width":2.0,
            "style":1
        },
        "borderRadius":"10.0:10.0,10.0:10.0,10.0:10.0,10.0:10.0"
    }
},
{
  "type": "Container",
  "alignment": "center",
  "child": {
    "type": "TextButton",
    "padding": "10,8,8,8",
    "click_event" : "route://productDetail?goods_id=123",
    "child" : {
      "type": "Text",
      "data": "Click Here"
    }
  }
}
  ]
},
  "appBar": {
    "type": "AppBar",
    "centerTitle": null,
    "backgroundColor": null,
    "title": {
      "type": "Text",
      "data": "No Title",
      "textAlign": "start",
      "overflow": "ellipsis",
      "maxLines": null,
      "semanticsLabel": null,
      "softWrap": null,
      "textDirection": "ltr",
      "style": {
        "color": "61000000",
        "debugLabel": null,
        "decoration": "none",
        "fontSize": 20.0,
        "fontFamily": null,
        "fontStyle": "normal",
        "fontWeight": "normal"
      },
      "textScaleFactor": null
    },
    "leading": null,
    "actions": [
      {
        "type": "SizedBox",
        "width": 40.0,
        "height": 40.0,
        "child": {
          "type": "RaisedButton",
          "color": "ff2196f3",
          "disabledColor": null,
          "disabledElevation": null,
          "disabledTextColor": null,
          "elevation": null,
          "padding": "0.0,0.0,0.0,0.0",
          "splashColor": null,
          "textColor": null,
          "child": {
            "type": "Icon",
            "data": "search",
            "size": 30.0,
            "color": null,
            "semanticLabel": null,
            "textDirection": null
          }
        }
      }
    ]
  }
}
''';