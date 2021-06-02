import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class login_screen extends StatelessWidget {
  const login_screen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 30.0,),
              Image(
                image: AssetImage("assets/images/logo.png"),
                width: 300.0,
                height: 300.0,
                alignment: Alignment.center,
              ),
              SizedBox(height: 10.0,),
              Text(
                "Connexion",
                style: TextStyle(fontSize: 24.0, fontFamily: "brand-bold"),
                textAlign: TextAlign.center,
              ),

              Padding(
                  padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(height: 1.0,),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration:InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(
                          fontSize: 16.0,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.0,
                        ),
                      ),
                      style: TextStyle(fontSize: 14.0),
                    ),
                    TextField(
                      obscureText: true,
                      decoration:InputDecoration(
                        labelText: "Mot de passe",
                        labelStyle: TextStyle(
                          fontSize: 16.0,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.0,
                        ),
                      ),
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(height: 15.0,),
                    RaisedButton(
                      color: Colors.yellow[600],
                      textColor: Colors.white,
                      child: Container(
                        height: 50.0,
                        child: Center(
                          child: Text(
                            "Connexion",
                            style: TextStyle(fontSize: 18.0, fontFamily: "brand-bold"),
                          ),
                        ),
                      ),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(24.0),
                      ),
                      onPressed: (){
                        print("logged button clicked");
                      },
                    ),
                  ],
                ),
              ),
              FlatButton(
                onPressed: (){
                  print("Clicked");
                },
                child: Text(
                    "Vous n'avez pas de compte ? Inscrivez-vous",

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}