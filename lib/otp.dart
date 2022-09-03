import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:streams/loading.dart';
import 'package:streams/shared/constant.dart';
import 'package:streams/sport.dart';

class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  final _formKey = GlobalKey<FormState>();
  String Otp = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 80),
                IconButton(
                  onPressed: (() {
                    Navigator.pop(context);
                  }),
                  icon: Image.asset(('assets/images/back.png')),
                  iconSize: 30.0,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // ignore: prefer_const_constructors

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Verify OTP code',
                      style: TextStyle(
                        color: textColor100,
                        fontFamily: 'Euclid Circular A',
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Text(
                      'Enter the OTP code sent to your email address',
                      style: TextStyle(
                        color: textColor60,
                        fontFamily: 'Euclid Circular A',
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 70,
                  width: 70,
                  child: TextFormField(
                    onChanged: (value) {
                      Otp = value;
                      print(Otp);
                      if (Otp.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    autofocus: true,
                    smartDashesType: SmartDashesType.enabled,
                    decoration: const InputDecoration(
                        // hintText: '0',
                        // hintStyle: TextStyle(
                        //   fontFamily: 'Euclid Circular A',
                        //   fontSize: 24,
                        //   fontWeight: FontWeight.w300,
                        //   color: textColor10,
                        // ),
                        filled: true,
                        fillColor: inputColor,
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: textColor100))),
                    style: const TextStyle(
                        color: textColor100,
                        fontFamily: 'Euclid Circular A',
                        fontSize: 24,
                        fontWeight: FontWeight.w400),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: TextFormField(
                    onChanged: (value) {
                      Otp = value;
                      print(Otp);
                      if (Otp.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    autofocus: true,
                    decoration: const InputDecoration(
                        // hintText: '0',
                        // hintStyle: TextStyle(
                        //   fontFamily: 'Euclid Circular A',
                        //   fontSize: 24,
                        //   fontWeight: FontWeight.w300,
                        //   color: textColor10,
                        // ),
                        filled: true,
                        fillColor: inputColor,
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: textColor100))),
                    style: const TextStyle(
                        color: textColor100,
                        fontFamily: 'Euclid Circular A',
                        fontSize: 24,
                        fontWeight: FontWeight.w400),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: TextFormField(
                    onChanged: (value) {
                      Otp = value;
                      print(Otp);
                      if (Otp.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    autofocus: true,
                    decoration: const InputDecoration(
                        // hintText: '0',
                        // hintStyle: TextStyle(
                        //   fontFamily: 'Euclid Circular A',
                        //   fontSize: 24,
                        //   fontWeight: FontWeight.w300,
                        //   color: textColor10,
                        // ),
                        filled: true,
                        fillColor: inputColor,
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: textColor100))),
                    style: const TextStyle(
                      color: textColor100,
                      fontFamily: 'Euclid Circular A',
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: Form(
                    key: _formKey,
                    child: TextFormField(
                      validator: (val) => val!.isEmpty ? '' : null,
                      onChanged: (val) {
                        setState(() => Otp = val);
                        print(Otp);
                        Otp = val;
                        if (Otp.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      autofocus: true,
                      decoration: const InputDecoration(
                          // hintText: '0',
                          // hintStyle: TextStyle(
                          //   fontFamily: 'Euclid Circular A',
                          //   fontSize: 24,
                          //   fontWeight: FontWeight.w300,
                          //   color: textColor10,
                          // ),
                          filled: true,
                          fillColor: inputColor,
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: textColor100))),
                      style: const TextStyle(
                        fontFamily: 'Euclid Circular A',
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              height: 55,
              width: double.infinity,
              child: TextButton(
                style: TextButton.styleFrom(
                    primary: background,
                    backgroundColor: textColor100,
                    textStyle: const TextStyle(
                      fontFamily: 'Euclid Circular A',
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
                child: const Text('Continue'),
                onPressed: () async {
                  print(Otp);
                  if (_formKey.currentState!.validate()) {
                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) =>  const Sport())));
                  }
                },
              ),
            ),
            Container(
              height: 10,
            )
          ]),
        ),
      ),
    );
  }
}
