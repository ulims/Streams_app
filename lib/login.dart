import 'package:flutter/material.dart';
import 'package:streams/otp.dart';
import 'package:streams/shared/constant.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  String email = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // ignore: prefer_const_constructors
          Container(height: 60),
          const Text(
            'Email Address',
            style: TextStyle(
              color: textColor100,
              fontFamily: 'Euclid Circular A',
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 9),
          const Text(
            'Enter your email address to access streams',
            style: TextStyle(
              color: textColor60,
              fontFamily: 'Euclid Circular A',
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 60),
          SizedBox(
            height: 85,
            child: Form(
              key: _formKey,
              child: TextFormField(
                validator: (val) => val!.isEmpty ? 'Enter your email' : null,
                onChanged: (val) {
                  setState(() => email = val);
                },
                autofocus: true,
                style: const TextStyle(
                  fontFamily: 'Euclid Circular A',
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
                decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: textColor100)),
                    fillColor: inputColor,
                    filled: true,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                    //focusColor: textColor10,
                    hintText: 'Email address',
                    hintStyle: TextStyle(
                      color: textColor20,
                      fontFamily: 'Euclid Circular A',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: textColor80,
                      fontFamily: 'Euclid Circular A',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    )),
              ),
            ),
          ),
          const Spacer(),
          SizedBox(
            height: 55,
            width: double.infinity,
            child: TextButton(
              style: TextButton.styleFrom(
                  primary: background,
                  backgroundColor:
                      email.length > 2 ? textColor100 : textColor10,
                  textStyle: const TextStyle(
                    fontFamily: 'Euclid Circular A',
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0))),
              child: const Text('Continue'),
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  await Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => const OTP())));
                }
              },
            ),
          ),
          Container(height: 10),
        ]),
      ),
    );
  }
}
