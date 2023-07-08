import 'package:flutter/material.dart';

class LogIn1 extends StatefulWidget {
  const LogIn1({super.key});

  @override
  State<LogIn1> createState() => _LogIn1State();
}

class _LogIn1State extends State<LogIn1> {
  String fullname = "";
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.9,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text("Welcome",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87)),
                  ),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Enter your email address to sign in. ",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87)),
                      Text("Enjoy your food :)",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87))
                    ],
                  )),
              SizedBox(height: 30),
              TextField(
                onChanged: (value) {
                  email = value;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.transparent, style: BorderStyle.solid)),
                    hintText: "Email Address",
                    hintStyle: TextStyle(color: Colors.black87)),
              ),
              SizedBox(height: 10),
              TextField(
                onChanged: (value) {
                  password = value;
                },
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.transparent,
                            style: BorderStyle.solid)),
                    hintText: "Password",
                    suffixIcon: Icon(Icons.remove_red_eye_sharp),
                    hintStyle: TextStyle(color: Colors.black87)),
              ),
              SizedBox(height: 5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Forgot Password?"),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: 40,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                      (states) => Color.fromARGB(209, 3, 94, 6),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 10),
                child: Row(
                  children: [
                    Text("Don't have an Account? "),
                    Text(
                      "Create new Account.",
                      style: TextStyle(fontSize: 15, color: Colors.greenAccent),
                    )
                  ],
                ),
              ),
              Text("Or"),
              SizedBox(height: 10),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: 40,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Color.fromARGB(255, 4, 18, 202))),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.facebook),
                        Text("Connect with Facebook")
                      ],
                    )),
              ),
              SizedBox(height: 10),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: 40,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Color.fromARGB(255, 8, 94, 224))),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.youtube_searched_for),
                        Text("Connect with Google")
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
