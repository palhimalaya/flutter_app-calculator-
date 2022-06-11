import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _email,
                onChanged: (val) {
                  // print(val);
                },
                validator: (value) {
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _password,
                onChanged: (val) {
                  // print(val);
                },
                validator: (value) {
                  // if((value??"").length<8){
                  if (_password.text.length < 8) {
                    return "Password length should be atleast 8 char";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      print("validated");
                    } else {
                      print("not validated");
                    }
                  },
                  child: const Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
