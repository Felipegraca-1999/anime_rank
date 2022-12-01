import 'package:anime_rank/shared/inner_shadow.dart';
import 'package:anime_rank/shared/spacing.dart';
import 'package:anime_rank/shared/touch_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomGoogleLoginButton extends StatelessWidget {
  final String label;
  final void Function()? onTap;
  final IconData? leftIcon;
  final IconData? rightIcon;
  final bool fullWidth;
  final bool isLoading;

  const CustomGoogleLoginButton({
    Key? key,
    required this.label,
    required this.onTap,
    this.leftIcon,
    this.rightIcon,
    this.fullWidth = false,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TouchWrapper(
      onTap: () {
        if (onTap != null && !isLoading) {
          onTap!();
        }
      },
      builder: (value) {
        return Container(
          decoration: BoxDecoration(
            boxShadow: TouchWrapper.interpolateOuterShadow(
              [
                BoxShadow(
                  color: const Color(0xFFBDBDBD).withOpacity(0.4),
                  offset: const Offset(4, 4),
                  blurRadius: 4,
                ),
                BoxShadow(
                  color: const Color(0xFF5200FF).withOpacity(0.59),
                  offset: const Offset(0, 4),
                  blurRadius: 15,
                )
              ],
              value,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: InnerShadow(
            shadows: TouchWrapper.interpolateInnerShadow(
              [
                BoxShadow(
                  color: const Color(0xFF5200FF).withOpacity(0.59),
                  blurRadius: 6,
                  spreadRadius: 0,
                  offset: const Offset(2.5, 2.5),
                ),
              ],
              value,
            ),
            child: Container(
              width: fullWidth ? null : 150,
              height: 56,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  const SizedBox(width: Spacing.m),
                  SizedBox(
                    child: Image.asset('assets/icons/google.png'),
                  ),
                  const SizedBox(width: Spacing.m),
                  Text(
                    'Entrar com o Google',
                    style: GoogleFonts.roboto(
                        fontSize: 23, color: Colors.black.withOpacity(0.8)),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class SecundaryButton extends StatelessWidget {
  const SecundaryButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
