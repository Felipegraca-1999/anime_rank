import 'package:anime_rank/core/components/custom_buttons.dart';
import 'package:anime_rank/shared/spacing.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    // final loginCubit = GetIt.I.get<LoginCubit>();

    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: Stack(
          children: [
            Positioned(
              width: width / 1.73,
              child: Transform.rotate(
                angle: math.pi / 180,
                child: Image.asset('assets/images/first_login_image.png'),
              ),
            ),
            Positioned(
              top: height * 0.15,
              right: 0,
              child: SizedBox(
                width: width / 1.5,
                child: Image.asset('assets/images/logo.png'),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: SizedBox(
                width: width / 1.5,
                child: Image.asset(
                  'assets/images/second_login_image.png',
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: Spacing.l,
                  left: Spacing.m,
                  right: Spacing.m,
                ),
                child: CustomGoogleLoginButton(
                  fullWidth: true,
                  label: 'GOOGLE',
                  onTap: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
