import 'package:ayurvedic_og/data_pages/data_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginPageState();
}

class _LoginPageState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 217,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/logo_make_11_06_2023_115 1.login.png"))),
                ),
                Positioned(
                    top: 60,
                    left: 150,
                    child: Image.asset(
                      "assets/main emplem.png",
                      width: 80,
                      height: 84,
                    ))
              ],
            ),
            Text(
              "Login Or Register To Book\nYour Books",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Email",
                      style: TextStyle(decorationThickness: 5, fontSize: 20)),
                ),
              ],
            ),
            TextFormField(
                validator: (value) {
                  if (value!.isEmpty ||
                      !value.contains("gmail") ||
                      !value.contains(".") ||
                      !value.contains("com")) {
                    return "Incorrect Email...";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[150],
                  hintText: "enter your email....",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                )),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Email",
                      style: TextStyle(decorationThickness: 5, fontSize: 20)),
                ),
              ],
            ),
            TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "incorrect password";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[150],
                  hintText: "enter your email....",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                )),
            InkWell(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DataPage()));
                }
              },
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 61, 143, 64)),
                    child: Center(
                      child: Text(
                        "login",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    )),
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}
