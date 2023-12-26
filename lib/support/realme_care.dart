import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class realme_Care extends StatefulWidget {
  const realme_Care({super.key});

  @override
  State<realme_Care> createState() => _realme_CareState();
}

class _realme_CareState extends State<realme_Care> {
  WebViewController? _controller;
  double webProgress = 0;

  @override
  void initState() {
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (progress) => setState(() {
            this.webProgress = progress / 100;
          }),
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.realme.com/bd/support/care-plus')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://www.realme.com/bd/support/care-plus'));
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("realme Care Plus"),
          backgroundColor: Colors.yellow,
        ),
        body: Column(
          children: [
            webProgress < 1 ? SizedBox(
              height: 7,
              child: LinearProgressIndicator(
                value: webProgress,
                color: Colors.red,
                backgroundColor: Colors.black,
              ),
            ) : SizedBox(),
            Expanded(

                child: WebViewWidget(controller: _controller!)),
          ],

        ));

  }
}
