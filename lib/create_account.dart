import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/login_screen.dart';
import 'package:flutter_application_1/setup_profile.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool? checkbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                "KR4ALL",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Create account",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: "Enter Name",
                labelStyle: const TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: "Enter Email ID",
                labelStyle: const TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: "Create Password",
                labelStyle: const TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Checkbox(
                    value: checkbox,
                    onChanged: (val) {
                      setState(() {
                        checkbox = val;
                      });
                    }),
                SizedBox(
                  width: 300,
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "I accept the",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                        WidgetSpan(
                          child: SizedBox(
                            width: 04,
                          ),
                        ),
                        TextSpan(
                          text: "terms and conditions",
                          style: TextStyle(color: Colors.red, fontSize: 16),
                        ),
                        WidgetSpan(
                          child: SizedBox(
                            width: 04,
                          ),
                        ),
                        TextSpan(
                          text: "and the",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                        WidgetSpan(
                          child: SizedBox(
                            width: 04,
                          ),
                        ),
                        TextSpan(
                          text: "Privacy policies",
                          style: TextStyle(color: Colors.red, fontSize: 16),
                        ),
                        WidgetSpan(
                          child: SizedBox(
                            width: 04,
                          ),
                        ),
                        TextSpan(
                          text: "of the KR4ALL app",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 200,
            ),
            MaterialButton(
              height: 60,
              minWidth: double.infinity,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const SetupProfile();
                  },
                ));
              },
              child: const Text(
                "Sign up",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              color: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    ));
  }
}
