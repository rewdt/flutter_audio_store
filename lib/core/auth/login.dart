import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: new EdgeInsets.symmetric(vertical: 50.0),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/auth_banner.png"),
              fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SafeArea(
              child: Column(children: [
            Text(
              'Audio',
              style: TextStyle(fontSize: 51, color: Colors.white),
            ),
            Text(
              'Its modular and designed to last',
              style: TextStyle(fontSize: 14, color: Colors.white),
            )
          ])),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(children: [
                Container(
                    child: TextField(
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Color(0xffbababa)),
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon:
                          Icon(Icons.mail_outline, color: Color(0xffbababa)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: 'Enter your email address'),
                )),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintStyle: TextStyle(color: Color(0xffbababa)),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon:
                            Icon(Icons.lock_outline, color: Color(0xffbababa)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        hintText: 'Enter a password'),
                  ),
                ),
                TextButton(
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: null,
                ),
                SizedBox(
                  height: 20,
                ),
                Column(children: [
                  SizedBox(
                    width: double.maxFinite,
                    height: 50.0,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      child: Text('Sign In'),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xff0ACF83)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ))),
                    ),
                  ),
                  TextButton(
                      onPressed: () => {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don’t have any account?',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 3),
                              child: Text(
                                'Sign Up here',
                                style: TextStyle(
                                    color: Color(0xff0ACF83),
                                    fontSize: 14,
                                    decoration: TextDecoration.underline),
                              ))
                        ],
                      ))
                ])
              ])),
        ],
      ),
    ));
  }
}
