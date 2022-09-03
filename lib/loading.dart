import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:streams/shared/constant.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: background,
      body: Center(
        child:  SpinKitFoldingCube(
  color: textColor100,
  size: 80.0,

        
),
      ),
    );
  }
}
