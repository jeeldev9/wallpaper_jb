import 'package:flutter/material.dart';
import 'package:wallpaper_jb/apiCall/imageApiCall.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ImageApi imageApi = ImageApi();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            imageApi.getImages();
          },
          child: Text("Tap"),
        ),
      ),
    );
  }
}
