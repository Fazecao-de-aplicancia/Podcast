
import 'package:flutter/material.dart';
import 'package:podcast/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//-------------------------------------------------------------------------------
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.grey,
        child:ListView(
//-------------------------------------------------------------------------------
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("assets/20191124-logo-ink.png")
            ),
            SizedBox(height: 20),
//-------------------------------------------------------------------------------
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
            ),
//-------------------------------------------------------------------------------
            SizedBox(height: 20),
//-------------------------------------------------------------------------------
            TextField(
              keyboardType: TextInputType.emailAddress,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
            ),
//-------------------------------------------------------------------------------

              Container(
                height: 40,
                alignment: Alignment.centerRight,
                child: FlatButton(
                  child: Text("Recuperar senha",textAlign: TextAlign.right),
                  onPressed: () {},
                  ),
              ),
//-------------------------------------------------------------------------------

              SizedBox(height: 40),
//-------------------------------------------------------------------------------    

              Container(
                height: 60,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 0.8, 1],
                    colors: [
                      Color(0xFF242E66),
                      Color(0xFF313F8C),
                      Color(0xFF3A4AA6),
                    ]
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  )
                ),
                child: SizedBox.expand(
                  child:FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Entrar",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 20,

                          ),
                        ),
                          Icon(
                            Icons.account_circle,
                            color: Colors.grey,
                            size: 24.0,
                          ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AppHome()),
                      );
                    }, 
                    ),
                ),
              ),
//------------------------------------------------------------------------------- 

          ],
        ),
      ),
    );
  }
}
     