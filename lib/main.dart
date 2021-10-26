import 'package:flutter/material.dart';
import 'package:web_view/home.dart';
import 'TvlistScreen.dart';
// import 'package:webview_flutter/webview_flutter.dart';
 
 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage()
      //  Webs(),
      
    );
  }
}
