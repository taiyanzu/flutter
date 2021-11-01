##  Development environment setup
[link](https://flutter.dev/docs/get-started/install/windows)

1. `>flutter doctor`

```
╔════════════════════════════════════════════════════════════════════════════╗
║ A new version of Flutter is available!                                     ║
║                                                                            ║
║ To update to the latest version, run "flutter upgrade".                    ║
╚════════════════════════════════════════════════════════════════════════════╝


Doctor summary (to see all details, run flutter doctor -v):
[√] Flutter (Channel stable, 2.5.1, on Microsoft Windows [Version 10.0.19041.508], locale en-US)
[√] Android toolchain - develop for Android devices (Android SDK version 31.0.0)
[√] Chrome - develop for the web
[√] Android Studio (version 2020.3)
[√] VS Code (version 1.61.2)
[√] Connected device (2 available)

• No issues found!

```

2. `>flutter upgrade`
```
Upgrading Flutter to 2.5.3 from 2.5.1 in D:\***\flutter_windows_2.5.1-stable\flutter...
Checking Dart SDK version...
Downloading Dart SDK from Flutter engine d3ea636dc5d16b56819f3266241e1f708979c233...
Expanding downloaded archive...
Building flutter tool...
Running pub upgrade...

Upgrading engine...
Downloading android-arm-profile/windows-x64 tools...                4.0s
Downloading android-arm-release/windows-x64 tools...                5.4s
Downloading android-arm64-profile/windows-x64 tools...              4.7s
Downloading android-arm64-release/windows-x64 tools...              5.7s
Downloading android-x64-profile/windows-x64 tools...                7.8s
Downloading android-x64-release/windows-x64 tools...                4.3s
Downloading android-x86 tools...                                   49.0s
Downloading android-x64 tools...                                   48.5s
Downloading android-arm tools...                                   23.3s
Downloading android-arm-profile tools...                           24.6s
Downloading android-arm-release tools...                           19.6s
Downloading android-arm64 tools...                                 29.3s
Downloading android-arm64-profile tools...                         16.2s
Downloading android-arm64-release tools...                         11.3s
Downloading android-x64-profile tools...                           35.3s
Downloading android-x64-release tools...                           10.8s
Downloading android-x86-jit-release tools...                       20.3s
Downloading Web SDK...                                             72.3s
Downloading package sky_engine...                                   4.1s
Downloading flutter_patched_sdk tools...                            8.6s
Downloading flutter_patched_sdk_product tools...                    7.9s
Downloading windows-x64 tools...                                   64.3s
Downloading windows-x64/font-subset tools...                        4.4s

Flutter 2.5.3 • channel stable • https://github.com/flutter/flutter.git
Framework • revision 18116933e7 (2 weeks ago) • 2021-10-15 10:46:35 -0700
Engine • revision d3ea636dc5
Tools • Dart 2.14.4

Running flutter doctor...
Doctor summary (to see all details, run flutter doctor -v):
[√] Flutter (Channel stable, 2.5.3, on Microsoft Windows [Version 10.0.19041.508], locale en-US)
[√] Android toolchain - develop for Android devices (Android SDK version 31.0.0)
[√] Chrome - develop for the web
[√] Android Studio (version 2020.3)
[√] VS Code (version 1.61.2)
[√] Connected device (2 available)

• No issues found!

```

## Hello World

```
import 'package:flutter/material.dart';
void main() {runApp(const MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Title',
      theme: ThemeData(primarySwatch: Colors.lightBlue,),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() { _counter++; });
  }
  @override
  Widget build(BuildContext context) { // runs every time setState is called
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title + " " +  _counter.toString()),
      ),
      body: Center( // Center takes a single child; "Flutter： Toggle Debug Paint" 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:',),
            const Text('You have pushed the button this many times:',),
            Text('$_counter', style: Theme.of(context).textTheme.headline4, ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

```

