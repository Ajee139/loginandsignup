import 'package:flutter/material.dart';

class SignUp1 extends StatefulWidget {
  const SignUp1({super.key});

  @override
  State<SignUp1> createState() => _SignUp1State();
}

class _SignUp1State extends State<SignUp1> {
  String fullname = "";
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            forceMaterialTransparency: true,
            leading: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black87,
                ),
              ),
            ),
            title: const Text(
              "Create Account",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            )),
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.9,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Row(
                        children: [
                          Text("Create Account",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87)),
                        ],
                      ),
                    ),
                    const Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                                "Enter your Name, Email and Password for signUp. ",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87))),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Already have an Account?",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.green)),
                      ],
                    ),
                    const SizedBox(height: 30),
                    TextField(
                      onChanged: (value) {
                        fullname = value;
                      },
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent,
                                  style: BorderStyle.solid)),
                          hintText: "Fullname",
                          hintStyle: TextStyle(color: Colors.black87)),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      onChanged: (value) {
                        email = value;
                      },
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent,
                                  style: BorderStyle.solid)),
                          hintText: "Email Address",
                          hintStyle: TextStyle(color: Colors.black87)),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      onChanged: (value) {
                        password = value;
                      },
                      obscureText: true,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent,
                                  style: BorderStyle.solid)),
                          hintText: "Password",
                          suffixIcon: Icon(Icons.remove_red_eye_sharp),
                          hintStyle: TextStyle(color: Colors.black87)),
                    ),
                    const SizedBox(height: 20),
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
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15, bottom: 10),
                      child: Text(
                          "By signing up you agree to our Term, conditions and Privacy Policy yada yada yada yada yada"),
                    ),
                    const Text("Or"),
                    const SizedBox(height: 10),
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
                    const SizedBox(height: 10),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: 40,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateColor.resolveWith(
                                  (states) => Color.fromARGB(255, 8, 94, 224))),
                          onPressed: () {},
                          child: const Row(
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
          ),
        ));
  }
}
