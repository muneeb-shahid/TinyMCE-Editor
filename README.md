<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>TinyMCE in Flutter (super_editor)</title>
  <style>
    :root {
      --bg: #0b0d12;
      --panel: #0f131a;
      --text: #e6e8ed;
      --muted: #b7c0ce;
      --accent: #7c5cff;
      --border: #1c2230;
      --code-bg: #121723;
    }
    html, body { margin:0; padding:0; }
    body {
      font-family: ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Inter, "Helvetica Neue", Arial, "Noto Sans", "Apple Color Emoji", "Segoe UI Emoji";
      line-height: 1.6;
      color: var(--text);
      background: linear-gradient(180deg, var(--bg), #0d1117 30%, #0b0d12);
      padding: 48px 20px 80px;
    }
    .container {
      max-width: 980px;
      margin: 0 auto;
      background: var(--panel);
      border: 1px solid var(--border);
      border-radius: 16px;
      box-shadow: 0 10px 30px rgba(0,0,0,.35);
      overflow: hidden;
    }
    header {
      padding: 28px 28px 8px;
      background: radial-gradient(1200px 300px at 10% -10%, rgba(124,92,255,.25), transparent 60%),
                  radial-gradient(800px 200px at 90% -10%, rgba(0,180,255,.18), transparent 60%);
      border-bottom: 1px solid var(--border);
    }
    h1 { font-size: 34px; letter-spacing:.2px; margin: 0 0 6px; }
    .subtitle { color: var(--muted); margin: 0 0 12px; }
    .badges img { vertical-align: middle; margin-right: 8px; }
    main { padding: 24px 28px 40px; }
    h2 { margin-top: 36px; font-size: 24px; }
    h3 { margin-top: 22px; font-size: 18px; }
    p, ul, ol { color: var(--muted); }
    a { color: #8bc5ff; text-decoration: none; }
    a:hover { text-decoration: underline; }
    .hero {
      margin: 12px 0 24px;
      border-radius: 12px;
      border: 1px solid var(--border);
      background: #0c111b;
      overflow: hidden;
    }
    .hero img { display: block; width: 100%; height: auto; }
    .callout {
      padding: 12px 14px;
      border: 1px dashed #2a3347;
      border-radius: 10px;
      background: rgba(124,92,255,0.05);
      color: var(--muted);
      margin: 14px 0 0;
    }
    pre {
      margin: 12px 0 18px;
      background: var(--code-bg);
      border: 1px solid var(--border);
      border-radius: 10px;
      padding: 14px 16px;
      overflow: auto;
    }
    code { font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", monospace; font-size: 13px; }
    .grid { display: grid; grid-template-columns: 1fr; gap: 16px; }
    @media (min-width: 860px) { .grid { grid-template-columns: 1fr 1fr; } }
    .kicker { text-transform: uppercase; letter-spacing:.12em; font-size: 12px; color: #a7b2c7; }
    .divider { height: 1px; background: var(--border); margin: 28px 0; }
    .small { font-size: 13px; }
    .muted { color: var(--muted); }
    .toc a { display: inline-block; padding: 4px 0; }
  </style>
</head>
<body>
  <div class="container">
    <header>
      <h1>TinyMCE in Flutter (super_editor)</h1>
      <p class="subtitle">Embed <strong>TinyMCE</strong> inside a Flutter app via <code>webview_flutter</code>, with offline TinyMCE assets and a custom <strong>@-mention</strong> autocomplete that inserts clickable links.</p>
      <p class="badges">
        <img alt="Flutter" src="https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter&logoColor=white">
        <img alt="WebView" src="https://img.shields.io/badge/webview_flutter-^4.13.0-0b7">
        <img alt="License" src="https://img.shields.io/badge/License-MIT-7c5cff">
      </p>
      <nav class="toc">
        <span class="kicker">Contents</span><br/>
        <a href="#whats-inside">What’s inside</a> •
        <a href="#project-layout">Project layout</a> •
        <a href="#getting-started">Getting started</a> •
        <a href="#how-it-works">How it works</a> •
        <a href="#run">Run</a> •
        <a href="#saving-reading">Saving &amp; reading HTML</a> •
        <a href="#customization">Customization</a> •
        <a href="#troubleshooting">Troubleshooting</a> •
        <a href="#publish">Publish to GitHub</a> •
        <a href="#license">License</a> •
        <a href="#urdu">Urdu Intro</a>
      </nav>
    </header>

    <main>
      <div class="hero">
        <img src="docs/screenshot-project-structure.png" alt="Project structure (assets/editor, tinymce folders, lib files)">
      </div>
      <p class="small muted">Place the screenshot at <code>docs/screenshot-project-structure.png</code> in your repo.</p>

      <h2 id="whats-inside">✨ What’s inside</h2>
      <ul>
        <li>Offline <strong>TinyMCE</strong> bundled under <code>assets/editor/tinymce/</code> (JS, skins, icons, themes, plugins).</li>
        <li>Mobile-friendly toolbar + iPad tweaks.</li>
        <li>Custom <strong>@mentions</strong> with suggestion box and keyboard navigation.</li>
        <li>Two-way bridge with <code>JavaScriptChannel('FlutterEditor')</code>.</li>
        <li>“Save” button to collect full HTML back in Flutter.</li>
        <li>Dynamic updates for the suggestion list from Flutter.</li>
      </ul>

      <h2 id="project-layout">📂 Project layout</h2>
      <pre><code>assets/
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
</code></pre>

      <div class="divider"></div>

      <h2 id="getting-started">🚀 Getting started</h2>

      <h3>1) Clone &amp; install</h3>
      <pre><code>git clone https://github.com/&lt;your-username&gt;/super_editor.git
cd super_editor
flutter pub get
</code></pre>

      <h3>2) Flutter/Dart versions</h3>
      <p>The app declares (in <code>pubspec.yaml</code>):</p>
      <pre><code class="language-yaml">environment:
  sdk: ^3.7.0

dependencies:
  webview_flutter: ^4.13.0
</code></pre>

      <h3>3) Assets (already included)</h3>
      <p><code>pubspec.yaml</code> contains the required asset entries:</p>
      <pre><code class="language-yaml">flutter:
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
</code></pre>
      <p class="callout">Keep folder names exactly as inside <code>assets/editor/</code>; otherwise update paths inside <code>editor.html</code>.</p>

      <div class="divider"></div>

      <h2 id="how-it-works">🧠 How it works (high-level)</h2>

      <h3>Flutter (<code>lib/main.dart</code>)</h3>
      <pre><code class="language-dart">import 'package:flutter/material.dart';
import 'package:super_editor/tinymcview.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TinyMCE Editor',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: TinyMceView(),
    );
  }
}
</code></pre>

      <h3>Flutter (<code>lib/tinymcview.dart</code> excerpt)</h3>
      <pre><code class="language-dart">_controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..addJavaScriptChannel(
    'FlutterEditor',
    onMessageReceived: (msg) {
      setState(() =&gt; _currentHtml = msg.message);
    },
  )
  ..setNavigationDelegate(
    NavigationDelegate(onPageFinished: (_) async {
      await Future.delayed(const Duration(milliseconds: 500));
      await _controller.runJavaScript(
        'initializeSuggestions(' + ${"jsonEncode(suggestionList)"} + ');'
      );
      final escapedContent = ${"jsonEncode('')"};
      await _controller.runJavaScript(
        'if (tinymce.activeEditor) { tinymce.activeEditor.setContent(' + escapedContent + '); }'
      );
    }),
  )
  ..loadFlutterAsset('assets/editor/editor.html');
</code></pre>

      <h3>HTML/JS (<code>assets/editor/editor.html</code> excerpt)</h3>
      <pre><code class="language-html">&lt;script src="tinymce/tinymce.min.js"&gt;&lt;/script&gt;
&lt;script&gt;
// Detect platform
const isIPad = /iPad|Macintosh/i.test(navigator.userAgent) &amp;&amp; 'ontouchend' in document &amp;&amp; !window.MSStream;
const isIPhone = /iPhone|iPod/.test(navigator.userAgent) &amp;&amp; !window.MSStream;
const isAndroid = /Android/i.test(navigator.userAgent);
const isIOS = isIPad || isIPhone;

// Build TinyMCE base path
let tinymceBasePath;
if (isIOS) {
  const basePath = window.location.href.split('/');
  basePath.pop();
  tinymceBasePath = basePath.join('/') + '/tinymce';
} else if (isAndroid) {
  tinymceBasePath = 'file:///android_asset/flutter_assets/assets/editor/tinymce';
} else {
  tinymceBasePath = 'tinymce';
}

tinymce.init({
  selector: '#editor',
  base_url: tinymceBasePath,
  fixed_toolbar_container: '#toolbar-container',
  plugins: 'advlist link lists table code',
  toolbar: 'undo redo | h1 h2 h3 | bold italic underline | forecolor backcolor | bullist numlist | alignleft aligncenter alignright | table | link | removeformat',
  toolbar_mode: 'sliding',
  menubar: true,
  skin_url: tinymceBasePath + '/skins/ui/oxide',
  content_css: tinymceBasePath + '/skins/content/default/content.min.css',
  theme_url: tinymceBasePath + '/themes/silver/theme.min.js',
  icons_url: tinymceBasePath + '/icons/default/icons.min.js',
  init_instance_callback(editor) {
    if (window.FlutterEditor) window.FlutterEditor.postMessage('Editor ready');
  },
  setup(editor) {
    editor.on('change', () =&gt; {
      if (window.FlutterEditor) window.FlutterEditor.postMessage(editor.getContent());
    });
    // ... (@-mention logic + suggestion box)
  }
});
&lt;/script&gt;
</code></pre>

      <div class="divider"></div>

      <h2 id="run">▶️ Run</h2>
      <div class="grid">
        <div>
          <h3>Android</h3>
          <pre><code>flutter run -d android</code></pre>
        </div>
        <div>
          <h3>iOS (macOS + Xcode)</h3>
          <pre><code>flutter run -d ios</code></pre>
        </div>
      </div>
      <p class="small muted">This demo uses a mobile WebView; Flutter Web is not targeted here.</p>

      <h2 id="saving-reading">🧪 Saving &amp; reading HTML</h2>
      <ul>
        <li>Every edit triggers <code>window.FlutterEditor.postMessage(editor.getContent())</code> back to Flutter.</li>
        <li>The floating “Save” button calls <code>tinymce.activeEditor.save()</code>; capture the latest HTML via the JS channel.</li>
      </ul>

      <h2 id="customization">🛠️ Customization</h2>
      <ul>
        <li><strong>Suggestion source</strong>: Replace/refresh the <code>suggestionList</code> in Flutter (each item has <code>{ id, name }</code>).</li>
        <li><strong>Link format</strong>: Change <code>AppConfig.baseApiUrl</code> or the insertion HTML in <code>insertItem(...)</code>.</li>
        <li><strong>Toolbar</strong>: Edit the <code>toolbar</code> string in the TinyMCE config.</li>
        <li><strong>Initial content</strong>: Call <code>tinymce.activeEditor.setContent('&lt;p&gt;...&lt;/p&gt;')</code> after load.</li>
        <li><strong>Styling</strong>: Tune <code>content_style</code> CSS (font size, headings, line height).</li>
      </ul>

      <h2 id="troubleshooting">🧯 Troubleshooting</h2>
      <ul>
        <li><strong>Blank editor / missing icons</strong> → Check <code>tinymceBasePath</code> and that all folders in <code>assets/editor/tinymce/</code> are declared in <code>pubspec.yaml</code>.</li>
        <li><strong>Toolbar wraps on iPad</strong> → Keep <code>toolbar_mode: 'sliding'</code> and the sticky toolbar CSS.</li>
        <li><strong>No suggestions</strong> → Ensure <code>initializeSuggestions([...])</code> runs after load; each item must include <code>id</code> and <code>name</code>.</li>
        <li><strong>No HTML reaching Flutter</strong> → The <code>JavaScriptChannel</code> name must be exactly <code>'FlutterEditor'</code>.</li>
        <li><strong>External links blocked on iOS</strong> → If you later load remote content, configure ATS exceptions; this demo works offline with local assets.</li>
      </ul>

      <div class="divider"></div>

      <h2 id="publish">🔁 Publish to GitHub (quick start)</h2>
      <pre><code># from the project root
git init
git add .
git commit -m "Initial commit: TinyMCE + Flutter WebView demo"
git branch -M main
git remote add origin https://github.com/&lt;your-username&gt;/super_editor.git
git push -u origin main
</code></pre>

      <h2 id="license">📝 License</h2>
      <p>MIT — do whatever you want, attribution appreciated.</p>

      <div class="divider"></div>

      <h2 id="urdu">🌐 Quick intro in Urdu</h2>
      <p>Yeh repo Flutter app ke andar <strong>TinyMCE</strong> ko local assets ke saath chalata hai. <code>@</code> type karte hi suggestion box aata hai jahan se item select karke <strong>clickable link</strong> insert ho jata hai. HTML content Flutter ko JS channel ke zariye milta hai. Aap apni API base URL aur suggestion list asaani se customize kar sakte hain.</p>
    </main>
  </div>
</body>
</html>
