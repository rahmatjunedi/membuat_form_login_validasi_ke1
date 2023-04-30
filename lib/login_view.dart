// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:membuat_form_login_validasi/darsboard_view.dart';
import 'package:membuat_form_login_validasi/shared/widget/textfield.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    // di bumgkung dgn form dgn cara pilih wiged center lalu ganti dengan form
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 46.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextFormField(
                        initialValue: 'admin@gmail.com',
                        maxLength: 20,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: Colors.blueGrey,
                          ),
                          suffixIcon: Icon(
                            Icons.email,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            ),
                          ),
                          helperText: 'Enter your email address',
                        ),
                        onChanged: (value) {},
                      ),
                      TextFormField(
                        initialValue: '123456',
                        maxLength: 20,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Colors.blueGrey,
                          ),
                          suffixIcon: Icon(
                            Icons.add,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            ),
                          ),
                          helperText: 'Enter your password',
                        ),
                        onChanged: (value) {},
                      ),
                      TextFormField(
                        initialValue: 'Masukan alamat anda',
                        maxLength: 20,
                        maxLines: 4,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'tolong di isi';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          labelText: 'Masukan alamat anda',
                          labelStyle: TextStyle(
                            color: Colors.blueGrey,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            ),
                          ),
                          helperText: "Masakuan alamat anda?",
                        ),
                        onChanged: (value) {},
                      ),
                      Row(
                        children: [
                          Expanded(
                            // cara membungkus expended yaitu pilih wrap with widget
                            child: ElevatedButton.icon(
                              icon: const Icon(Icons.save),
                              label: const Text("Simpan"),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.cyan),
                              onPressed: () {
                                var isValid = _formKey.currentState!.validate();
                                if (isValid) {
                                  Navigator.push(
                                    // navigator push yaitu utk mengarahkan ke halaman baru
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DasboardView()),
                                  );
                                }
                              },
                            ),
                          ),
                          SizedBox(
                            width: 12.0,
                          ),
                          Expanded(
                            child: ElevatedButton.icon(
                              icon: const Icon(Icons.refresh),
                              label: const Text("Reset"),
                              style: ElevatedButton.styleFrom(),
                              onPressed: () {
                                _formKey.currentState!.reset();
                              },
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
