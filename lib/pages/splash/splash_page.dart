import 'package:anime_rank/core/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {


  @override
  void initState() {
   Future.delayed(const Duration(seconds: 3)).then((_) async {
        Navigator.of(context).pushNamedAndRemoveUntil(
            AppRouter.login, (Route<dynamic> route) => false);
      }
    );
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    final widht = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Container(
      width: widht,
      height: height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: height * 0.1),
          Lottie.asset('assets/lottie/logo_splash.json'),
          SizedBox(height: height * 0.2),
          Image(
            width: widht * 0.9,
            image: const AssetImage('assets/images/logo_text.png'),
          ),
        ],
      ),
    ));
  }
}
