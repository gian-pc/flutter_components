import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1D2025),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Image.network(
                  "https://ih1.redbubble.net/image.622748019.0162/pp,504x498-pad,600x600,f8f8f8.u1.jpg",
                  width: 230,
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "COMPONENTES",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      letterSpacing: 1.7,
                    ),
                  ),
                ),
                ItemListWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ItemListWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Color(0xff33353d),
          borderRadius: BorderRadius.circular(12.0)),
      child: ListTile(
        title: Text(
          "Alertas",
          style: TextStyle(color: Colors.white,fontSize: 20),
        ),
        leading: Icon(
          Icons.notification_important,
          color: Colors.white,
        ),
        subtitle: Text(
          "Este es el módulo de las alertas",
          style: TextStyle(color: Colors.white),
        ),
        trailing: Icon(
          Icons.chevron_right,
          color: Colors.white,
        ),
      ),
    );
  }
}
