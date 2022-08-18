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
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(218, 194, 185, 185)
                              .withOpacity(0.6),
                          blurRadius: 10,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    height: 100,
                    width: 100,
                    child: Stack(
                      children: [
                        const Positioned(
                          top: 31,
                          left: 31,
                          child: Image(
                            image: AssetImage('assets/images/google_icon.png'),
                            width: 38,
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Material(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(100),
                              splashColor:
                                  const Color.fromARGB(151, 0, 217, 255),
                              onTap: () {
                                loginCubit.login(context);
                              },
                              child: const Icon(
                                Icons.location_searching_outlined,
                                size: 70,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
