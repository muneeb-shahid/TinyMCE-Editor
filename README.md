TinyMCE in Flutter (super_editor)

A minimal example showing how to embed TinyMCE inside a Flutter app using webview_flutter, package all TinyMCE assets locally, and add a custom @‑mention autocomplete that inserts clickable links.



✨ What’s inside

Offline TinyMCE (JS, skins, icons, themes, plugins) bundled under assets/editor/tinymce/

Mobile‑friendly toolbar + iPad tweaks

Custom @mentions with a suggestion box and keyboard navigation

Flutter ↔️ JS bridge via JavaScriptChannel('FlutterEditor')

“Save” button that returns full HTML back to Flutter

Dynamic updates of the suggestion list from Flutter

📂 Project layout

assets/
  editor/
    editor.html
    tinymce/
      icons/
      models/
      plugins/
      skins/
      themes/
lib/
  main.dart
  tinymcview.dart
pubspec.yaml

The screenshot above mirrors this structure.

🚀 Getting started

1) Clone & install

git clone https://github.com/<your-username>/super_editor.git
cd super_editor
flutter pub get

2) Flutter/Dart versions

The app declares (in pubspec.yaml):

environment:
  sdk: ^3.7.0

dependencies:
  webview_flutter: ^4.13.0

3) Add assets (already included)

pubspec.yaml contains the required asset entries:

flutter:
  uses-material-design: true
  assets:
    - assets/editor/editor.html
    - assets/editor/tinymce/tinymce.min.js
    - assets/editor/tinymce/themes/silver/
    - assets/editor/tinymce/icons/default/
    - assets/editor/tinymce/skins/ui/oxide/
    - assets/editor/tinymce/skins/content/default/
    - assets/editor/tinymce/plugins/advlist/
    - assets/editor/tinymce/plugins/link/
    - assets/editor/tinymce/plugins/lists/
    - assets/editor/tinymce/plugins/table/
    - assets/editor/tinymce/plugins/code/
    - assets/editor/tinymce/models/dom/

Keep folder names exactly as in assets/editor or update paths inside editor.html.

🧠 How it works (high‑level)

Flutter (tinymcview.dart)

Creates a WebViewController with unrestricted JS

Registers JavaScriptChannel('FlutterEditor') to receive HTML changes

On page load:

Calls initializeSuggestions([...]) to inject the list used by the @‑mention UI

(Optionally) sets initial content with tinymce.activeEditor.setContent(...)

“Save” FAB runs tinymce.activeEditor.save() and logs the current HTML

HTML/JS (assets/editor/editor.html)

Detects Android vs iOS and builds a correct TinyMCE base path

Initializes TinyMCE with:

fixed_toolbar_container: '#toolbar-container'

A single‑row toolbar that scrolls instead of wrapping

Mobile/iPad friendly settings and bigger touch targets

Implements initializeSuggestions(list) and updateSuggestionList(list) accessible from Flutter

Watches key events; on @ shows a floating suggestion box

On selection, inserts a hyperlink built from AppConfig.baseApiUrl + item.id

🧩 Key files

lib/main.dart

home: TinyMceView(),

lib/tinymcview.dart (excerpt)

WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..addJavaScriptChannel('FlutterEditor', onMessageReceived: (msg) { /* HTML here */ })
  ..setNavigationDelegate(NavigationDelegate(onPageFinished: (_) async {
      await _controller.runJavaScript('initializeSuggestions(${jsonEncode(suggestionList)});');
  }))
  ..loadFlutterAsset('assets/editor/editor.html');

assets/editor/editor.html (excerpt)

<script src="tinymce/tinymce.min.js"></script>
<script>
  const isAndroid = /Android/i.test(navigator.userAgent);
  const isIPad = /iPad|Macintosh/i.test(navigator.userAgent) && 'ontouchend' in document && !window.MSStream;
  const isIPhone = /iPhone|iPod/.test(navigator.userAgent) && !window.MSStream;
  const isIOS = isIPad || isIPhone;

  let tinymceBasePath;
  if (isIOS) {
    const basePath = window.location.href.split('/'); basePath.pop();
    tinymceBasePath = basePath.join('/') + '/tinymce';
  } else if (isAndroid) {
    tinymceBasePath = 'file:///android_asset/flutter_assets/assets/editor/tinymce';
  } else {
    tinymceBasePath = 'tinymce';
  }

  tinymce.init({ selector: '#editor', base_url: tinymceBasePath, /* ... */ });
</script>

🛠️ Customization

Suggestion source: Replace the hard‑coded suggestionList in Flutter (IDs + display names).

Link format: Change AppConfig.baseApiUrl or the insertion HTML in insertItem(...).

Toolbar: Edit toolbar string in tinyConfig to add/remove buttons.

Initial content: Call tinymce.activeEditor.setContent('<p>...</p>') after load.

Styling: Tweak content_style CSS for font size, headings, etc.

▶️ Run

Android:

flutter run -d android

iOS (requires macOS + Xcode):

flutter run -d ios

This demo uses a mobile WebView; Flutter Web is not targeted here.

🧪 Saving & reading HTML

Any edit triggers window.FlutterEditor.postMessage(editor.getContent());

The Save FAB also calls tinymce.activeEditor.save() and you can grab the latest HTML via the JS channel.

🧯 Troubleshooting

Blank editor / missing icons → Check tinymceBasePath and that all folders in assets/editor/tinymce/ are listed in pubspec.yaml.

Toolbar wraps on iPad → Keep toolbar_mode: 'sliding' and the CSS in #toolbar-container.

No suggestions → Ensure initializeSuggestions([...]) is called after the page finishes loading, and that each item has { id, name }.

No HTML in Flutter → Confirm the JavaScriptChannel name matches 'FlutterEditor'.

External links blocked on iOS → If you later load remote content, you may need ATS exceptions—this demo uses local assets so it works offline.