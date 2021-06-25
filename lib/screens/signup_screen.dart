import 'package:btaxi/screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class signup_screen extends StatelessWidget {
  static const String idScreen = "signup";

  //Variables contenant les données du formulaire
  TextEditingController name_on_signup = TextEditingController();
  TextEditingController mail_on_signup = TextEditingController();
  TextEditingController phone_on_signup = TextEditingController();
  TextEditingController pass_on_signup = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 10.0,),
              Image(
                image: AssetImage("assets/images/logo1.png"),
                width: 300.0,
                height: 250.0,
                alignment: Alignment.center,
              ),
              SizedBox(height: 2.0,),
              Text(
                "Inscription",
                style: TextStyle(fontSize: 24.0, fontFamily: "brand-bold"),
                textAlign: TextAlign.center,
              ),

              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(height: 1.0,),
                    TextField(
                      controller: name_on_signup, //récupérer les noms des inscris
                      keyboardType: TextInputType.text,
                      decoration:InputDecoration(
                        labelText: "Nom & prénoms",
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
                      controller: mail_on_signup,//récupérer les valeurs de mails
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
                      controller: phone_on_signup, // récupérer numero de telephone
                      keyboardType: TextInputType.phone,
                      decoration:InputDecoration(
                        labelText: "Téléphone",
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
                      controller: pass_on_signup,//récupérer mot de passe
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
                    SizedBox(height: 10.0,),
                    RaisedButton(
                      color: Colors.black,
                      textColor: Colors.white,
                      child: Container(
                        height: 50.0,
                        child: Center(
                          child: Text(
                            "Créer un compte",
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
                  Navigator.pushNamedAndRemoveUntil(context, login_screen.idScreen, (route) => false);
                  },
                child: Text(
                  "Vous avez un compte ? Connectez-vous",

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}