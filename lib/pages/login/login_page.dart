import 'package:anime_rank/pages/login/login_cubit.dart';
import 'package:anime_rank/shared/spacing.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final loginCubit = GetIt.I.get<LoginCubit>();

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            SizedBox(height: Spacing.xxl),
            // Image.asset('assets/images/logo.png'),
          ],
        ),
      ),
    );
  }
}
