import 'package:anime_rank/core/components/login_button.dart';
import 'package:anime_rank/pages/login/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final loginCubit = GetIt.I.get<LoginCubit>();

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 238, 238, 238),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Text(
                'LOGIN',
                style: GoogleFonts.lato(
                  fontSize: 70,
                  fontWeight: FontWeight.w200,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: height * 0.2),
            Stack(
              children: [
                Image(
                  width: width * 0.9,
                  image: const AssetImage('assets/images/background_login.png'),
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 200,
                  left: 10,
                  child: LoginButton(
                    onTap: () => loginCubit.login(),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
