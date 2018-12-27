import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:zj_app_flutter/widget/GSYCommonOptionWidget.dart';

/**
 * webview版本
 * Created by zj
 * on 2018/7/27.
 */
class GSYWebView extends StatelessWidget {
  final String url;
  final String title;
  final OptionControl optionControl = new OptionControl();

  GSYWebView(this.url, this.title);

  _renderTitle() {
    if (url == null || url.length == 0) {
      return new Text(title);
    }
    optionControl.url = url;
    return new Row(children: [
      new Expanded(child: new Container()),
      GSYCommonOptionWidget(optionControl),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return new WebviewScaffold(
      withJavascript: true,
      url: url,
      scrollBar:true,
      withLocalUrl: true,
      appBar: new AppBar(
        title: _renderTitle(),
      ),
    );
  }
}
