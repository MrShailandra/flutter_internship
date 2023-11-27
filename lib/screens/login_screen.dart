import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hello_world/gen/fonts.gen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Phone Number",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: FontFamily.poppins,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (value?.isEmpty == true) {
                    return "Please Enter Value";
                  } else if (value?.length != 10) {
                    return "Please Enter Valid Number";
                  }
                  return null;
                },
                keyboardType: TextInputType.phone,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    hintText: "Enter Your Phone",
                    contentPadding: EdgeInsets.only(left: 20),
                    border: OutlineInputBorder(),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Password",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: FontFamily.poppins,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                obscureText: !isVisible,
                validator: (value) {
                  if (value?.isEmpty == true) {
                    return "Please Enter Value";
                  } else if (value!.length < 8) {
                    return "Please Enter Valid Passwor";
                  }
                  return null;
                },
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.password),
                    suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        child: Icon(isVisible
                            ? Icons.visibility
                            : Icons.visibility_off)),
                    hintText: "Enter Your Password",
                    contentPadding: const EdgeInsets.only(left: 20),
                    border: const OutlineInputBorder(),
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print("object");
                      }
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(color: Colors.black),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
