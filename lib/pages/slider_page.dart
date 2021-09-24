import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderPage extends StatelessWidget {
  List<int> listImages = [2, 19, 10, 55, 22, 55, 77, 4, 6, 7];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sliders"),
      ),
      body: ListView.builder(
        itemCount: listImages.length,
        itemBuilder: (BuildContext federico, int index) {
          return Container(
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(color: Colors.greenAccent),
            child: Image.network(
                "https://picsum.photos/500/500/?image=${listImages[index]}"),
          );
        },
      ),
    );
  }
}
