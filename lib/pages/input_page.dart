import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool isObscure = true;
  TextEditingController _fechaController = TextEditingController();

  List<String> superHeroes = [
    "Batman",
    "Superman",
    "Wonder Woman",
    "Flash",
    "Aquaman"
  ];

  String auxiliar = "Batman";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inputs"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          buildTextFieldSimple(),
          SizedBox(height: 20),
          buildTextFieldMail(),
          SizedBox(height: 20),
          buildTextFieldPassword(),
          SizedBox(height: 20),
          buildTextFieldEdit(),
          SizedBox(height: 20),
          buildTextFieldDate(context),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.0),

            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                value: auxiliar,
                items: getItemsDropdown(),
                onChanged: (String? value) {
                  auxiliar=value!;
                  setState(() {

                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<DropdownMenuItem<String>> getItemsDropdown() {
    List<DropdownMenuItem<String>> ramoncito = [];
    superHeroes.forEach((element) {
      ramoncito.add(
        DropdownMenuItem(
          child: Text(element),
          value: element,
        ),
      );
    });
    return ramoncito;
  }

  TextField buildTextFieldDate(BuildContext context) {
    return TextField(
      controller: _fechaController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
        ),
        labelText: "Fecha de nacimiento",
        hintText: "Fecha de nacimiento",
        suffixIcon: Icon(Icons.calendar_today),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        selectDate(context);
      },
    );
  }

  selectDate(BuildContext mandarina) async {
    DateTime? picked = await showDatePicker(
      context: mandarina,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null) {
      _fechaController.text = picked.toString().substring(0, 10);
    }
  }

  TextField buildTextFieldEdit() {
    return TextField(
      cursorColor: Colors.black87,
      style: TextStyle(color: Color(0xff565656), fontSize: 17.0),
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        prefixIcon: Icon(Icons.search, color: Colors.black26.withOpacity(0.25)),
        hintText: "Buscar producto",
        suffixIcon: Icon(
          Icons.remove_red_eye,
          color: Colors.black26,
        ),
        hintStyle: TextStyle(color: Colors.black26.withOpacity(0.25)),
        fillColor: Colors.white,
        filled: true,
      ),
    );
  }

  TextField buildTextFieldPassword() {
    return TextField(
      obscureText: isObscure,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
        ),
        hintText: "Password",
        labelText: "Password",
        prefixIcon: Icon(Icons.lock),
        suffixIcon: IconButton(
          onPressed: () {
            isObscure = !isObscure;
            setState(() {});
          },
          icon: Icon(Icons.remove_red_eye),
        ),
      ),
    );
  }

  TextField buildTextFieldMail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      // inputFormatters: [
      //   FilteringTextInputFormatter(RegExp(r'[0-9]'), allow: true)
      // ],
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.0),
          ),
          prefixIcon: Icon(Icons.mail),
          suffixIcon: Icon(Icons.alternate_email),
          hintText: "Correo electrónico"),
      onSubmitted: (String value) {
        print(value);
      },
      onChanged: (String value) {
        print(value);
      },
    );
  }

  TextField buildTextFieldSimple() {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
          hintText: "Usuario",
          labelText: "Usuario",
          helperText: "Tus datos están seguros.",
          counterText: "Cantidad: 0",
          icon: Icon(Icons.verified_user),
          suffixIcon: Icon(Icons.supervised_user_circle)),
      onTap: () {
        print("Mi TextField");
      },
      onChanged: (String value) {
        print(value);
      },
    );
  }
}
