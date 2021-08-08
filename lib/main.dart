import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.INFO,
                    animType: AnimType.BOTTOMSLIDE,
                    title: 'Dialog Title',
                    desc: 'Dialog description here.............',
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                  )..show();
                },
                child: Text('DialogType.INFO'),
                style: ElevatedButton.styleFrom(primary: Colors.blueAccent)),
            ElevatedButton(
                onPressed: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.WARNING,
                    animType: AnimType.BOTTOMSLIDE,
                    title: 'Dialog Title',
                    desc: 'Dialog description here.............',
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                  )..show();
                },
                child: Text('DialogType.WARNING'),
                style: ElevatedButton.styleFrom(primary: Colors.orangeAccent)),
            ElevatedButton(
                onPressed: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.ERROR,
                    animType: AnimType.BOTTOMSLIDE,
                    title: 'Dialog Title',
                    desc: 'Dialog description here.............',
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                  )..show();
                },
                child: Text('DialogType.ERROR'),
                style: ElevatedButton.styleFrom(primary: Colors.redAccent)),
          ],
        ),
      ),
    );
  }
}
