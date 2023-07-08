import "package:flutter/material.dart";

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("images/Login Screen Image 6.jpeg"))),
          child: Stack(
            children: [
              Center(
                  child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.75,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Welcome",
                        style:
                            TextStyle(fontSize: 22, color: Colors.blueAccent),
                      ),
                      const SizedBox(height: 30),
                      TextField(
                        onChanged: (value) {
                          email = value;
                        },
                        style:
                            const TextStyle(fontSize: 18, color: Colors.white),
                        decoration: const InputDecoration(
                          hintText: "email",
                          hintStyle: TextStyle(color: Colors.blueAccent),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          icon: Icon(
                            Icons.email,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      TextField(
                        onChanged: (value) {
                          password = value;
                        },
                        obscureText: true,
                        style:
                            const TextStyle(fontSize: 18, color: Colors.white),
                        decoration: const InputDecoration(
                          hintText: "password",
                          hintStyle: TextStyle(color: Colors.blueAccent),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          icon: Icon(
                            Icons.password,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                      const SizedBox(height: 40.0),
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.black)),
                          onPressed: () {},
                          child: const Text(
                            "LogIn",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey),
                          ))
                    ]),
              ))
            ],
          ),
        ));
  }
}
