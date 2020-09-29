import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'model/app_state_model.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => AppStateModel()..loadProducts(),
    child:  MyApp()),
   
    );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter TabBar',
      home: new CupertinoStoreApp(),
      theme: new ThemeData(primaryColor: Colors.black),
    );
  }
}

// void main() {
//   return runApp(
//     ChangeNotifierProvider<AppStateModel>(
//       create: (context) => AppStateModel()..loadProducts(),
//       child: CupertinoStoreApp(),
//     ),
//   );
// }
// class CountryList extends StatefulWidget {

//   @override
//   State<StatefulWidget> createState() {
//     return CupertinoStoreApp();
//   }

// }

class CupertinoStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This app is designed only to work vertically, so we limit
    // orientations to portrait up and down.
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return CupertinoApp(
      home: CupertinoStoreHomePage(),
    );
  }
}