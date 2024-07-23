import 'package:farming_app/pages/auth/login/login.dart';
import 'package:farming_app/pages/modules/mainwrapper.dart';
import 'package:farming_app/utils/images.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ckeck_session();
  }
  void ckeck_session() async {
    await Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  LoginScreen()));
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(kImageLogo,fit: BoxFit.contain,),
      ),
    );
  }
}