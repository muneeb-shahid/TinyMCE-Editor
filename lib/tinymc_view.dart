import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:super_editor/app_string.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TinyMceView extends StatefulWidget {
  const TinyMceView({super.key});

  @override
  State<TinyMceView> createState() => _TinyMceViewState();
}

class _TinyMceViewState extends State<TinyMceView> {
  late final WebViewController _controller;
  String _currentHtml = '';

  /// ✅ Updated suggestion list with IDs
  final List<Map<String, dynamic>> suggestionList = [
    {'id': 1, 'name': 'United States'},
    {'id': 2, 'name': 'Canada'},
    {'id': 3, 'name': 'Mexico'},
    {'id': 4, 'name': 'Brazil'},
    {'id': 5, 'name': 'Argentina'},
    {'id': 6, 'name': 'United Kingdom'},
    {'id': 7, 'name': 'France'},
    {'id': 8, 'name': 'Germany'},
    {'id': 9, 'name': 'Italy'},
    {'id': 10, 'name': 'Spain'},
  ];

  @override
  void initState() {
    super.initState();

    _controller =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..addJavaScriptChannel(
            'FlutterEditor',
            onMessageReceived: (msg) {
              setState(() => _currentHtml = msg.message);
              log('⤵️ HTML from editor: $_currentHtml');
            },
          )
          ..setNavigationDelegate(
            NavigationDelegate(
              onPageFinished: (_) async {
                print('🔄 Editor page loaded');

                await Future.delayed(const Duration(milliseconds: 500));

                try {
                  // ✅ Pass structured suggestion list to JS
                  await _controller.runJavaScript(
                    'initializeSuggestions(${jsonEncode(suggestionList)});',
                  );
                  print('✅ Suggestions initialized (${suggestionList.length})');

                  // ✅ Set initial content (optional)
                  final escapedContent = jsonEncode(HtmlString.html);
                  await _controller.runJavaScript('''
                if (tinymce.activeEditor) {
                  tinymce.activeEditor.setContent($escapedContent);
                }
              ''');
                } catch (e) {
                  print('❌ Error initializing WebView: $e');
                }
              },
            ),
          )
          ..loadFlutterAsset('assets/editor/editor.html');
  }

  /// ✅ Get HTML from TinyMCE
  Future<String> getHtml() async {
    final raw = await _controller.runJavaScriptReturningResult(
      'tinymce.activeEditor.getContent();',
    );
    return raw is String ? raw.trim().replaceAll(RegExp(r'^"|"$'), '') : '$raw';
  }

  /// ✅ Update suggestion list dynamically
  void updateSuggestionList(List<Map<String, dynamic>> newList) {
    setState(() {
      suggestionList.clear();
      suggestionList.addAll(newList);
    });

    print('🔄 Updating suggestions with ${newList.length} items');

    _controller
        .runJavaScript('updateSuggestionList(${jsonEncode(suggestionList)});')
        .catchError((e) {
          print('❌ Error updating suggestions: $e');
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        title: Text('TinyMCE', style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10, right: 10, bottom: 100),
        child: WebViewWidget(controller: _controller),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          await _controller.runJavaScript('tinymce.activeEditor.save();');
          print('✅ Saved HTML: $_currentHtml');
        },
        label: const Text('Save'),
        icon: const Icon(Icons.save),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
