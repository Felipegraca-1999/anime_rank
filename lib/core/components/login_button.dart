import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final void Function()? onTap;
  const LoginButton({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(218, 194, 185, 185).withOpacity(0.6),
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
                splashColor: const Color.fromARGB(151, 0, 217, 255),
                onTap: onTap,
                child: const Icon(
                  Icons.location_searching_outlined,
                  size: 70,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
