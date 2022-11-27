import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/create_account.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPscreen extends StatefulWidget {
  const OTPscreen({super.key});

  @override
  State<OTPscreen> createState() => _OTPscreenState();
}

class _OTPscreenState extends State<OTPscreen> {
  get pin_code_text_field => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
        backgroundColor: Colors.amber,
        title: const Text(
          "Verify Screen",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
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
            "Verify Mobile",
            style: TextStyle(
                color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "We have send the verification code to\n +919988776654",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PinCodeTextField(
              appContext: context,
              length: 6,
              onChanged: (val) {},
              keyboardType: TextInputType.number,
              pinTheme: PinTheme(
                fieldHeight: 60,
                fieldWidth: 50,
                selectedColor: Colors.black,
                activeColor: Colors.grey,
                inactiveColor: Colors.grey,
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: "Dodn't receive code?",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
                WidgetSpan(
                  child: SizedBox(
                    width: 10,
                  ),
                ),
                TextSpan(
                  text: "Resend",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const CreateAccount();
                  },
                ),
              );
            },
            child: const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.red,
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
