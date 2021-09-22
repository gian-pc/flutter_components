import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
      ),
      body: ListView(
        children: [
          buildCard1(),
          buildCard2(),
          buildCard1(),
          buildCard2(),
          buildCard1(),
          buildCard2(),
        ],
      ),
    );
  }

  Card buildCard2() {
    return Card(
          clipBehavior: Clip.antiAlias,
          margin: EdgeInsets.all(12.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Column(
            children: [
              Image.network("https://esdegamers.com/wp-content/uploads/2020/06/SXmG6M15YBml0LZmZFPDccIbRTDckHUSG7wEyyfPfp0-1024x568.jpg"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding:EdgeInsets.all(12.0),
                    child: Text("The Silmarillion"),
                  ),
                  Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.favorite),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.share),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        );
  }

  Card buildCard1() {
    return Card(
          margin: EdgeInsets.all(12.0),
          elevation: 4.0,
          shadowColor: Colors.black26,
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.0)),
          child: Column(
            children: [
              ListTile(
                title: Text("The Silmarillion"),
                subtitle: Text("JRR Tolkien"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "Outlined",
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Aceptar"),
                  ),
                  ElevatedButton.icon(
                    icon: Icon(Icons.close),
                    onPressed: () {},
                    label: Text("Cancelar"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Elevated",
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            side:
                                BorderSide(color: Colors.black54, width: 1)),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
  }
}
