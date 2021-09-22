import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  void showMyAlert(BuildContext matasquita) {

    showDialog(
      context: matasquita,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.yellowAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0)
          ),
          title: Text("Bienvenidos"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FlutterLogo(
                size: 120,
              ),
              SizedBox(
                height: 10,
              ),
              Text("Descripción del Alert")
            ],
          ),
          actions: [
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancelar"),
            ),
            MaterialButton(
              onPressed: () {},
              child: Text("Okay"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alertas"),
      ),
      body: Center(
        child: MaterialButton(
            onPressed: () {
              showMyAlert(context);
            },
            color: Colors.blue,
            child: Text(
              "Mostrar alerta",
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
