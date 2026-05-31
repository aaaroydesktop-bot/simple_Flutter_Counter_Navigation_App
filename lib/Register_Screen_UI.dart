// ignore: file_names
import 'package:flutter/material.dart';

class RegisterScreenUi extends StatelessWidget {
  const RegisterScreenUi({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneNumber = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController email = TextEditingController();

    final fromkey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: Text(
          "Register",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey.shade50,
      ),
      body: Form(
        key: fromkey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enter your mobile number",
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 7),
                  TextFormField(
                    controller: phoneNumber,
                    decoration: InputDecoration(
                      hintText: "1712345678",
                      suffixIcon: Icon(Icons.check_circle),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter your phone number..";
                      } else if (value.length != 11) {
                        return "please enter your valid number";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Enter your email",
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 7),
                  TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                      hintText: "abc12@gmail.com",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "pleas Enter your email";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Enter your password",
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 7),
                  TextFormField(
                    controller: password,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "************",
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your password";
                      } else if (value.length < 8) {
                        return "Please pw geter then 8";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Re-Enter your password",
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 7),
                  TextFormField(
                    controller: password,
                    obscureText: true,

                    decoration: InputDecoration(
                      hintText: "************",
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your password";
                      } else if (value.length < 8) {
                        return "Please pw geter then 8";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 400,
                    height: 48,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(15),
                        ),
                      ),
                      onPressed: () {
                        if (fromkey.currentState!.validate()) {}
                      },
                      child: Text("Sing Up", style: TextStyle(fontSize: 17)),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: "Don't have an account?",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                        children: [
                          TextSpan(
                            text: " Sing In",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(child: Text("or")),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                    width: 400,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade50,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(15),
                          side: BorderSide(color: Colors.grey),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/3840px-Google_%22G%22_logo.svg.png",
                            height: 30,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Continue with Google",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 60,
                    width: 400,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade50,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(15),
                          side: BorderSide(color: Colors.grey),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            "https://cdn-icons-png.flaticon.com/512/0/747.png",
                            height: 30,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Continue with Apple",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
