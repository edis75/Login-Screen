import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? username;
  String? password;
  final _formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange),
                    ),
                    labelText: "Please enter your name",
                    labelStyle: TextStyle(color: Colors.orange),
                    border: OutlineInputBorder()),
                validator: (value) {
                  if (value == null) {
                    return "Please enter your name ";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  username = value;
                },
              ),
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange),
                    ),
                    labelText: "Please enter your password",
                    labelStyle: TextStyle(color: Colors.orange),
                    border: OutlineInputBorder()),
                validator: (value) {
                  if (value == null) {
                    return "Please enter your password ";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  password = value;
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MaterialButton(
                    child: Text("Be Member"),
                    onPressed: () {},
                  ),
                  MaterialButton(
                    child: Text("Forget password"),
                    onPressed: () {},
                  )
                ],
              ),
              _loginButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget _loginButton() => RaisedButton(
        child: Text("Enter"),
        onPressed: () {
          if(_formKey.currentState!.validate()){
            _formKey.currentState?.save();
            debugPrint("username: $username, password:$password");

          }
        },
      );
}
