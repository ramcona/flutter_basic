import 'package:flutter/material.dart';
import 'package:my_app/home.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<LoginScreen>{
  String _uname = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text("Selamat datang di \nCatatan Keuanganmu",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  child: Text("masukan username dan password",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 30),
                  child:
                  Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Masukan username anda...",
                          labelText: "Username",
                        ),
                        onChanged: (text){
                          _uname = text;

                          print('First text field: $_uname');
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Masukan password anda...",
                          labelText: "Password",

                        ),
                        onChanged: (text){
                          _password = text;
                        },
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 26),
                        child: SizedBox(
                          width: double.infinity,
                          child: RaisedButton(
                            color: Colors.blueAccent,
                            onPressed: (){
                              //pindah ke main
                              if(_uname.isEmpty){
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        content: Text("Username tidak boleh kosong"),
                                      );
                                    });
                              }else if(_password.isEmpty){
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        content: Text("Password tidak boleh kosong"),
                                      );
                                    });
                              }else{
                                Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => HomeScreen()));
                              }

                            },
                            child: Text("Masuk",
                              style: TextStyle(
                                  color: Colors.white
                              ),),
                          ),
                        ),
                      )
                    ],
                  ),
                )

              ],
            ),
          )
      ),
    );
  }

}
